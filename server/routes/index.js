var fs = require('fs')
var path = require('path')
var axios = require('axios')
var dayjs = require('dayjs')
var dotenv = require('dotenv')
var express = require('express')
var jwt = require('jsonwebtoken')
var formidable = require('formidable')

var router = express.Router()
var {callP} = require("../db/db")
var {clone,isN,formatJSON,arrayToExcel} = require("../util/util")

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
    res.status(200).json({code:0, data: ret, token: token, msg: '登录成功'})
  } else {
    res.status(200).json({code:1, data: null, msg: '用户名或密码错误'})
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
      msg: '文件上传成功',
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

// 
router.post('/exportPart', async (req, res, next) => {
  let sql = `CALL PROC_QUERY_PART(?)`
  let data = await callP(sql, null, res)

  let file = `export/${dayjs().format('YYYYMMDDhhmmss')}.xlsx`
  await arrayToExcel(data,file)
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
  res.status(200).json({ code: 0, data: r })
})



///////////////////////////////////////////////////
// -----------------  總類API ------------------ //
///////////////////////////////////////////////////


// 查詢總類
router.post('/queryModel', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_MODEL(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})

// 刪除總類
router.post('/delModel', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_MODEL(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
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
  res.status(200).json({ code: 0, data: r })
})

// 刪除供應商
router.post('/delSupply', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_SUPPLY(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
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

// 查詢供應商
router.post('/queryWare', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_WARE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  res.status(200).json({ code: 0, data: r })
})

// 刪除供應商
router.post('/delWare', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_WARE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  res.status(200).json({ code: 0, data: r })
})

// 保存供應商
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
  res.status(200).json({ code: 0, data: r })
})

// 刪除在庫
router.post('/checkStock', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_CHECK_STOCK(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
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




///////////////////////////////////////////////////
// ------------------  出入庫API ----------------- //
///////////////////////////////////////////////////

// 查詢出入庫
router.post('/queryStockIO', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_STOCK_IO(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})

// 刪除出入庫
router.post('/delStockIO', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_STOCK_IO(?)`
  let r = await callP(sql, params, res)
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

// 查詢出入庫
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

// 查詢出入庫
router.post('/queryStockIOByCode', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_STOCK_IO_BY_CODE(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})


// 查詢出入庫
router.post('/queryStockByWare', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_STOCK_BY_WARE(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})



///////////////////////////////////////////////////
// ------------------  出入庫API ----------------- //
///////////////////////////////////////////////////

// 查詢出入庫
router.post('/queryUser', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_USER(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})

// 刪除出入庫
router.post('/delUser', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_USER(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})

// 保存出入庫
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

// 查詢出入庫
router.post('/queryDep', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_DEP(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  res.status(200).json({ code: 0, data: r })
})

// 刪除出入庫
router.post('/delDep', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_DEP(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  res.status(200).json({ code: 0, data: r })
})

// 保存出入庫
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
  res.status(200).json({ code: 0, data: r })
})

// 刪除現場
router.post('/delSite', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_SITE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
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