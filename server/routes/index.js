var fs = require('fs')
var path = require('path')
var axios = require('axios')
var dayjs = require('dayjs')
var dotenv = require('dotenv')
var express = require('express')
var jwt = require('jsonwebtoken')
var formidable = require('formidable')
var ExcelJS = require('exceljs');

var router = express.Router()
var {callP,doProc} = require("../db/db")
var {clone,isN,formatJSON,stockToExcel,formatRemark,formatKey,partToExcel,genQR} = require("../util/util")

const SECRET_KEY = 'HOSO-PLATFORM-2024'
const UPLOAD_DIR = `${__dirname}/../upload`


dotenv.config()

const root = path.resolve(__dirname, '../')


const auth =(req, res, next)=> {
  const authHeader = req.headers['authorization']
  const token = authHeader && authHeader.split(' ')[1]

  // console.log(token)
  if (isN(token)) return res.sendStatus(401)
  jwt.verify(token, SECRET_KEY, (err, usr) => {
    if (err) return res.sendStatus(403)
    req.usr = usr
    // console.log('usr',usr)
    next()
  })
}

router.get('/test',async (req, res, next) =>{  
    res.status(200).json({success:1})  
})



///////////////////////////////////////////////////
// ---------------  系統模塊API ----------------- //
///////////////////////////////////////////////////


// 用戶登錄
router.post('/login',async (req, res, next) =>{
  let params = req.body
  let sql = `CALL PROC_LOGIN(?)`
  let r = await callP(sql, params, res)
  if (r.length > 0) {
    let ret = clone(r[0])
    let token = jwt.sign(ret, SECRET_KEY)
    res.status(200).json({code:0, data: ret, token: token, msg: 'ログインしました'})
  } else {
    res.status(200).json({code:1, data: null, msg: 'ユーザー名又はパスワードが間違いました'})
  }
})

// 上傳文件
router.post('/upload', function(req, res,next) {
  const form = formidable({ uploadDir: `${__dirname}/../upload` });

  form.on('fileBegin', function(name, file) {
    const filename = file.originalFilename;
    const filepath =  file.filepath;
    const fileext = filename.slice(((filename.lastIndexOf(".") - 1) >>> 0) + 2);

    file.filepath = `upload/${dayjs().format('YYYYMMDDhhmmss')}.${fileext}`
  })

  form.parse(req, (err, fields, files) => {
    if (err) {
      next(err);
      return;
    }

    res.status(200).json({
      status: 200,
      success: true,
      msg: 'アプロードできました',
      data: files.file.filepath
    })
  });
})




///////////////////////////////////////////////////
// ---------------  部品模塊API ----------------- //
///////////////////////////////////////////////////

// 查詢部品
router.post('/queryPartSel', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_PART_SEL(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})



// 查詢部品
router.post('/queryTable', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_TABLE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  r = formatJSON(r,'sup_info')
  formatKey(r)
  

  res.status(200).json({ code: 0, data: r })
})

// 查詢選擇框
router.post('/querySelInfo', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql1 = `CALL PROC_QUERY_MODEL(?)`
  let sql2 = `CALL PROC_QUERY_SUPPLY(?)`
  let r1 = await callP(sql1, params, res)
  let r2 = await callP(sql2, params, res)
  res.status(200).json({ code: 0, model: r1, supply:r2 })
})

// 保存部品
router.post('/savePart', auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  // console.log(params)
  let sql = `CALL PROC_SAVE_PART(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data:r })
})

// 导出部品
router.post('/exportPart', async (req, res, next) => {
  let sql = `CALL PROC_QUERY_PART(?)`
  let data = await callP(sql, null, res)

  let file = `export/${dayjs().format('YYYYMMDDhhmmss')}.xlsx`
  await partToExcel(data,file)
  res.status(200).json({ code: 0, file  })
})


router.post('/delById', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_BY_ID(?)`
  let r = await callP(sql, params, res)
  // console.log(r)
  r = formatJSON(r,'info')
  r = formatJSON(r,'sup_info')
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})



// 导入零件
router.post('/importPart', async (req, res, next) => {
  
  let filename 
  let filepath 

  const form = formidable({ uploadDir: `${root}/upload` });

  form.on('fileBegin', function(name, file) {
    const fileext = file.originalFilename.slice(((file.originalFilename.lastIndexOf(".") - 1) >>> 0) + 2);
    filename = `import_${dayjs().format('YYYYMMDDhhmmss')}.${fileext}`
    filepath = `${root}/upload/${filename}`

    file.filepath = `upload/${filename}`
  })

  form.parse(req, async(err, fields, files) => {
    if (err) {
      next(err);
      return;
    }
    const workbook = new ExcelJS.Workbook();
    await workbook.xlsx.readFile(filepath);
    const worksheet = workbook.getWorksheet(1);

    const head = []
    const data = []
    let [id_name,id_code,id_sup,id_mod] = [null,null,null,null]

    // 获取数据
    worksheet.eachRow({ includeEmpty: true }, (row, i) => {
      if (i===1) {
        row.eachCell({ includeEmpty: true }, (cell, j) => {                  
          head.push(cell.value||'');
        });
      }else{
        const rowData = [];
        row.eachCell({ includeEmpty: true }, (cell, j) => {
          rowData.push(cell.value||'');
        });

        if ((rowData[0]!=='')&&(rowData[1]!=='')) {
          data.push(rowData);
        }
      }
    })
   
    // 转化类型和供应商
    const supList = new Set()
    const modList = new Set()
    data.map(o=>{
      if (o[id_sup]!=='') {
        supList.add(o[id_sup])
      }
      if (o[id_mod]!=='') {
        modList.add(o[id_mod])
      }
    })
    

    const supJson = [...supList] 
    const modJson = [...modList] 
    const sql1 = `CALL PROC_IMPORT_MODEL(?)`
    const sql2 = `CALL PROC_IMPORT_SUPPLY(?)`
    const modData = await callP(sql1, modJson, res)
    const supData = await callP(sql2, supJson, res)

    // 重构数据
    const requireDataHeader=['name','code','sup_name','mod_name']
    for(const header of requireDataHeader){
      const index = 
      header
    }
    head.splice(id_name,1)
    head.splice(id_code,1)
    head.splice(id_sup,1)
    head.splice(id_mod,1)

    const ret = []
    for (let o of data) {
      modData.map(item=>{
        if (item.name === o[id_mod]) {
          o[id_mod] = item.id
        }
      })

      supData.map(item=>{
        if (item.name === o[id_sup]) {
          o[id_sup] = item.id
        }
      })
      const code = richTextToText(o[id_code])  
      const qrcode = await genQR(code)
      const name = o[id_name]
      const sid = o[id_sup]
      const mid = o[id_mod]
      let r = {code,name,sid,mid,qrcode}      

      o.splice(id_name,1)
      o.splice(id_code,1)
      o.splice(id_sup,1)
      o.splice(id_mod,1)

      console.log(head)
      console.log(o)
      let jsonItem = []
      o.map((p,i)=>{
        jsonItem.push({key:head[i] ,val:p})
        // jsonItem[head[i]] = p
      })
      r.info = JSON.stringify(jsonItem)    
      ret.push(r)
    }
      
    const sql3 = `CALL PROC_IMPORT_PART(?)`
    const partList = await callP(sql3, ret, res)


    res.status(200).json({
      status: 200,
      success: true,
      // data: r,
      msg: 'データーを導入されました',
    })
  });

})

const richTextToText= (text)=>{
  if(typeof text === 'object'){        
    if(!Array.isArray(text)){      
      return text.richText.reduce((acc,cur)=>acc.text+cur.text)
    }else{
      return 'err'
    }
  } 
  else return text+''
}


///////////////////////////////////////////////////
// -----------------  總類API ------------------ //
///////////////////////////////////////////////////


// 查詢總類
router.post('/queryModel', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_MODEL(?)`
  let r = await callP(sql, params, res)
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 刪除總類
router.post('/delModel', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_MODEL(?)`
  let r = await callP(sql, params, res)
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 保存總類
router.post('/saveModel', auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  let sql = `CALL PROC_SAVE_MODEL(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})



///////////////////////////////////////////////////
// -----------------  供應商API ----------------- //
///////////////////////////////////////////////////

// 查詢供應商
router.post('/querySupply', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_SUPPLY(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 刪除供應商
router.post('/delSupply', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_SUPPLY(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 保存供應商
router.post('/saveSupply',auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  let sql = `CALL PROC_SAVE_SUPPLY(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})






///////////////////////////////////////////////////
// ------------------  倉庫API ----------------- //
///////////////////////////////////////////////////

// 查詢倉庫
router.post('/queryWare', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_WARE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})


// 刪除倉庫
router.post('/delWare', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_WARE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})



// 根据部门查詢倉庫
router.post('/queryWareByDep', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_WARE_BY_DEP(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')

  res.status(200).json({ code: 0, data: r })
})




// 保存倉庫
router.post('/saveWare',auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  let sql = `CALL PROC_SAVE_WARE(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})





///////////////////////////////////////////////////
// ------------------  在庫API ----------------- //
///////////////////////////////////////////////////

// 查詢在庫
router.post('/queryStock', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_STOCK(?)`
  let r = await callP(sql, params, res)
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})



// 盘查库存
router.post('/checkStock', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql1 = `CALL PROC_CHECK_STOCK(?)`
  let sql2 = `CALL PROC_QUERY_STOCK(?)`
  let r1 = await callP(sql1, params, res)
  let r2 = await callP(sql2, params, res)
  formatKey(r2)
  res.status(200).json({ code: 0, data: r2 })
})


// 盘查库存
router.post('/checkStockById', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_CHECK_STOCK_BY_ID(?)`
  
  let r = await callP(sql, params, res)
  formatKey(r)
  res.status(200).json({ code: 0, data: r})
})



// 保存在庫
router.post('/saveStock',auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  let sql = `CALL PROC_SAVE_STOCK(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})


// 根据仓库查詢出入庫
router.post('/queryStockByWare', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_STOCK_BY_WARE(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})


// 更新仓库库存数量
router.post('/saveStockNum',auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  let sql = `CALL PROC_SAVE_STOCK_NUM(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})







// 导出库存
router.post('/exportStock', async (req, res, next) => {
  let sql = `CALL PROC_QUERY_STOCK(?)`
  let data = await callP(sql, null, res)

  let file = `export/${dayjs().format('YYYYMMDDhhmmss')}.xlsx`

  // console.log(data)
  await stockToExcel(data,file)
  res.status(200).json({ code: 0, file  })
})




///////////////////////////////////////////////////
// ------------------  出入庫API ----------------- //
///////////////////////////////////////////////////
const STATE = {
  10:'出庫承認待ち',
  11:'出庫待ち',
  12:'出庫完成',
  13:'出庫エラー',
  14:'出庫不承認',

  20:'入庫承認待ち',
  21:'入庫待ち',
  22:'入庫完成',
  23:'入庫エラー',
  24:'一部入庫',
  25:'入庫不承認',
  
  30:'移动承認待ち',
  31:'移动待ち',
  32:'移动完成',
  33:'移动エラー',
  34:'移动不承認'  
}
      
     

const isSame=(arr)=> {
  let uniqueElements = new Set(arr);
  return uniqueElements.size === 1;
}

const caluMode = (list) => {
  const sum = list.reduce((acc, curr) => acc + curr, 0);
  const avg = sum / list.length;
  const ret = avg < 20 ? 'out' : avg < 30 ? 'in' : 'mov';
  return ret;
};

const caluState = (list,el)=>{
  const _list = list.map(o=>Number(o))
  const same = isSame(_list)
  const mode = caluMode(_list)

  if (same) {
    let state = parseInt(list[0])
    el.state = state
    el.state_text = STATE[state]
  }else{
    if (_list.includes(21)) {
      el.state = 24
      el.state_text = STATE[24]
    }else if (mode==='in') {
      el.state = 22
      el.state_text = STATE[22]
    }else if (mode==='out') {
      el.state = 12
      el.state_text = STATE[12]
    }else if (mode==='mov') {
      el.state = 32
      el.state_text = STATE[32]
    }
  }
}





// 查詢出入庫
router.post('/queryStockIO', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_STOCK_IO(?)`
  let r = await callP(sql, params, res)
  formatKey(r)

  r.map(o=>{
    let {state_list} = o
    let list = o.state_list.split(',')
    caluState(list, o)
    o.remark = formatRemark(o.remark)
  })
  // console.log(r)
  res.status(200).json({ code: 0, data: r })
})

// 刪除出入庫
router.post('/delStockIO', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_STOCK_IO(?)`
  let r = await callP(sql, params, res)
  formatKey(r)

  r.map(o=>{
    let {state_list} = o
    let list = o.state_list.split(',')
    caluState(list, o)
  })
  res.status(200).json({ code: 0, data: r })
})

// 保存出入庫
router.post('/saveStockIO',auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr  
  // console.log(params)
  let sql = `CALL PROC_SAVE_STOCK_IO(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})

// 查詢仓库列表
router.post('/queryWareCas', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql1 = `CALL PROC_QUERY_DEP(?)`
  let sql2 = `CALL PROC_QUERY_WARE(?)`
  let r1 = await callP(sql1, params, res)
  let r2 = await callP(sql2, params, res)
  let ret = []

  r1.map(o=>{
    let item = {label:o.name, value:o.id, children:[] }
    let ware = r2.filter(p => p.dep_id === o.id)
    ware.map(p=>{
      item.children.push({label:p.name, value:p.id })
    })
    ret.push(item)
  })
  res.status(200).json({ code: 0, data: ret })
})

// 根据订单号 查詢出入庫PC
router.post('/queryStockIOByCode', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_STOCK_IO_BY_CODE(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})


// 根据订单号 查詢出入庫MOBILE
router.post('/queryStockIOByRC', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_STOCK_IO_BY_RC(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})


// 审核出入库订单
router.post('/auditStockIO', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_AUDIT_STOCK_IO(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})


// 出入庫逻辑处理
router.post('/procStockIO', auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr

  
  // console.log(params)
  let sql = `CALL PROC_PROC_STOCK_IO(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})





///////////////////////////////////////////////////
// ------------------  用户API ----------------- //
///////////////////////////////////////////////////

// 查詢用户
router.post('/queryUser', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_USER(?)`
  let r = await callP(sql, params, res)
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 刪除用户
router.post('/delUser', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_USER(?)`
  let r = await callP(sql, params, res)
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 保存用户
router.post('/saveUser',auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  let sql = `CALL PROC_SAVE_USER(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})



///////////////////////////////////////////////////
// ------------------  營業所API ----------------- //
///////////////////////////////////////////////////

// 查詢營業所
router.post('/queryDep', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_DEP(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 刪除營業所
router.post('/delDep', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  
  let sql = `CALL PROC_DEL_DEP(?)`
  let r = await callP(sql, params, res)
  if(r)
  {
     r = formatJSON(r,'info')
    formatKey(r)
  }
  res.status(200).json({ code: 0, data: r })
})

// 保存營業所
router.post('/saveDep',auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  let sql = `CALL PROC_SAVE_DEP(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})




///////////////////////////////////////////////////
// ------------------  現場API ----------------- //
///////////////////////////////////////////////////

// 查詢現場
router.post('/querySite', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_SITE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 刪除現場
router.post('/delSite', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_SITE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  formatKey(r)
  res.status(200).json({ code: 0, data: r })
})

// 保存現場
router.post('/saveSite',auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr
  let sql = `CALL PROC_SAVE_SITE(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})




module.exports = router