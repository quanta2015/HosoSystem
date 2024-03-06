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




router.post('/queryTable', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_TABLE(?)`
  let r = await callP(sql, params, res)
  r = formatJSON(r,'info')
  r = formatJSON(r,'sup_info')
  res.status(200).json({ code: 0, data: r })
})


router.post('/querySelInfo', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql1 = `CALL PROC_QUERY_MODEL(?)`
  let sql2 = `CALL PROC_QUERY_SUPPLY(?)`
  let r1 = await callP(sql1, params, res)
  let r2 = await callP(sql2, params, res)
  res.status(200).json({ code: 0, model: r1, supply:r2 })
})


router.post('/savePart', auth, async (req, res, next) => {
  let params = req.body
  let {usr} = req.usr
  params.create_name = usr

  // console.log(params)
  let sql = `CALL PROC_SAVE_PART(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data:r })
})


router.post('/exportPart', auth, async (req, res, next) => {
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



router.post('/queryModel', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_QUERY_MODEL(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})

router.post('/delModel', async (req, res, next) => {
  let params = req.body
  // console.log(params)
  let sql = `CALL PROC_DEL_MODEL(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})

router.post('/saveModel', async (req, res, next) => {
  let params = req.body
  let sql = `CALL PROC_SAVE_MODEL(?)`
  let r = await callP(sql, params, res)
  res.status(200).json({ code: 0, data: r })
})



module.exports = router