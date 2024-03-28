import search from '@/img/menu/search.svg'
import ware from '@/img/menu/ware.svg'
import rcamera from '@/img/menu/rcamera.svg'
import person from '@/img/menu/person.svg'
// import config   from '@/img/menu/config.svg'
import {API_SERVER} from '@/constant/apis'
import {Tag} from 'antd'
import defaultImg from '../img/img404.webp'
import {jp} from '@constant/lang'
const { DB,STOCK_IO_STATUS,TAG } = jp


export const ST = {
  OUT_AUDIT: 10,  //出庫待審核
  OUT_READY: 11,  //待出庫
  OUT_SUCC:  12,  //出庫完成
  OUT_ERROR: 13,  //出庫錯誤
  OUT_NOPAS: 14,  //出庫审核未通过

  IN_AUDIT:  20,  //入庫待審核
  IN_READY:  21,  //待入庫
  IN_SUCC:   22,  //入庫完成
  IN_ERROR:  23,  //入庫出錯
  IN_PART:   24,  //部分入庫
  IN_NOPAS:  25,   //入庫审核未通过

  MOV_AUDIT: 30,  //移动待審核
  MOV_READY: 31,  //待移动
  MOV_SUCC:  32,  //移动完成
  MOV_ERROR: 33,  //移动錯誤
  MOV_NOPAS: 34,  //移动审核未通过
}  
export const ST_TXT = {
  10:STOCK_IO_STATUS.OUT_WAIT_REV,
  11:STOCK_IO_STATUS.OUT_WAIT,
  12:STOCK_IO_STATUS.OUT_DONE,
  13:STOCK_IO_STATUS.OUT_ERR,
  14:STOCK_IO_STATUS.OUT_REJ,

  20:STOCK_IO_STATUS.IN_WAIT_REV,
  21:STOCK_IO_STATUS.IN_WAIT,
  22:STOCK_IO_STATUS.IN_DONE,
  23:STOCK_IO_STATUS.IN_ERR,
  24:STOCK_IO_STATUS.IN_SOME,
  25:STOCK_IO_STATUS.IN_REJ,
  
  30:STOCK_IO_STATUS.MOVE_WAIT_REV,
  31:STOCK_IO_STATUS.MOVE_WAIT,
  32:STOCK_IO_STATUS.MOVE_DONE,
  33:STOCK_IO_STATUS.MOVE_ERR,
  34:STOCK_IO_STATUS.MOVE_REJ
}

const pageSize = 6

export const json_part = [
  {
      dataIndex: 'key',
      type: 'string',
      title: DB.ID,
      width: 80,
      align: 'center',
      req: true,
      fixed: 'left',
      // render: (text, record, index) => `${index + 1 + (pageSize * (pagination.current - 1))}`, 
      // render: (text, record, index) => `${index + 1}`,
  },
  {
      dataIndex: 'qrcode',
      type: 'string',
      title: DB.QRCODE,
      width: 100,
      req: true,
      fixed: 'left',
      render: (text, r) => <img src={text} alt={r.name}/> 
    },{
      dataIndex: 'img',
      type: 'string',
      title: DB.PART.IMG,
      width: 100,
      req: true,
      fixed: 'left',
      render: (url, r) => <img src={url?(!url.startsWith('http')?`${API_SERVER}/${url}`:url):defaultImg} alt={r.name}/> 
    },{
      dataIndex: 'code',
      type: 'string',
      title: DB.PART.CODE,
      key: true,
      width: 200,
      align: 'center',
      fixed: 'left',
      req: false,
    },{
      dataIndex: 'name',
      type: 'string',
      title: DB.PART.NAME,
      width: 200,
      req: true,
    },
    {
      dataIndex: 'mod_name',
      type: 'string',
      title: DB.PART.MODE_NAME,
      width: 120,
      req: false,
    },
    {
      dataIndex: 'sup_name',
      type: 'string',
      title: DB.PART.SUP_NAME,
      width: 200,
      req: true,
    },{
      dataIndex: 'sup_phone',
      type: 'string',
      title: DB.PART.SUP_PHONE,
      width: 120,
      req: true,
    },{
      dataIndex: 'sup_addr',
      type: 'string',
      title: DB.PART.SUP_ADDR,
      width: 200,
      req: true,
    }, 
]



export const json_model = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.ID,
    width: 100,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'name',
    type: 'string',
    title: DB.MODEL.NAME,
    key: true,
    width: 200,
    align: 'center',
    fixed: 'left',
    req: false,
  }
]



export const json_supply = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.SUPPLY.ID,
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'img',
    type: 'string',
    title: DB.SUPPLY.IMG,
    width: 80,
    fixed: 'left',
    align: 'center',
    render: (url, r) => <img className="icon" src={`${API_SERVER}/${url}`} alt={r.name}/> 
  },{
    dataIndex: 'name',
    type: 'string',
    title: DB.SUPPLY.NAME,
    width: 100,
    align: 'center',
  },{
    dataIndex: 'phone',
    type: 'string',
    title: DB.SUPPLY.PHONE,
    width: 200,
    align: 'center',
  },{
    dataIndex: 'addr',
    type: 'string',
    title: DB.SUPPLY.ADDR,
    width: 200,
  }
]



export const json_ware = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.ID,
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'dep_name',
    type: 'string',
    title: DB.WARE.DEP_NAME,
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'code',
    type: 'string',
    title: DB.WARE.CODE,
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'name',
    type: 'string',
    title: DB.WARE.NAME,
    width: 200,
  },{
    dataIndex: 'addr',
    type: 'string',
    title: DB.WARE.ADDR,
    width: 200,
  },{
    dataIndex: 'manager',
    type: 'string',
    title: DB.WARE.MANAGER,
    width: 100,
    align: 'center',
  }
]



export const json_stock = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.ID,
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'ware_code',
    type: 'string',
    title: DB.STOCK.WARE_CODE,
    width: 120,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'ware_name',
    type: 'string',
    title: DB.STOCK.WARE_NAME,
    width: 150,
  },{
    dataIndex: 'part_img',
    type: 'string',
    title: DB.STOCK.PART_IMG,
    width: 100,
    align: 'center',
    render: (url, r) => <img className="icon" src={`${API_SERVER}/${url}`} /> 
  },{
    dataIndex: 'part_code',
    type: 'string',
    title: DB.STOCK.PART_CODE,
    width: 150,
  },{
    dataIndex: 'part_name',
    type: 'string',
    title: DB.STOCK.PART_NAME,
    width: 150,
    align: 'center',
  },{
    dataIndex: 'model_name',
    type: 'string',
    title: DB.STOCK.MODEL_NAME,
    width: 150,
    align: 'center',
  },{
    dataIndex: 'supply_name',
    type: 'string',
    title: DB.STOCK.SUPPLY_NAME,
    width: 200,
    align: 'center',
  },{
    dataIndex: 'num',
    type: 'string',
    title: DB.STOCK.NUM,
    width: 100,
    align: 'center',
  },{
    dataIndex: 'status',
    type: 'string',
    title: DB.STOCK.STATUS,
    width: 100,
    align: 'center',
    render:(text,r)=> 
      text===0?<Tag color="blue">{TAG.NORMAL}</Tag>:<Tag color="red">{TAG.WAIT_STOCK_TAKE}</Tag>
    
  }
]


export const json_stock_io = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.ID,
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'qrcode',
    type: 'string',
    title: DB.QRCODE,
    width: 100,
    fixed: 'left',
    align: 'center',
    render: (text, r) => <img src={text} alt={r.name}/> 
  },{
    dataIndex: 'state_text',
    type: 'string',
    title: DB.STOCK_IO.REMARK,
    width: 150,
    fixed: 'left',
    align: 'center',
    render:(text,r)=> <Tag color="blue">{text}</Tag>
  },{
    dataIndex: 'recept_code',
    type: 'string',
    title: DB.STOCK_IO.RECEPT_CODE,
    width: 200,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'type',
    type: 'string',
    title: DB.STOCK_IO.TYPE,
    width: 150,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'out_ware_name',
    type: 'string',
    title: DB.STOCK_IO.OUT_WARE_NAME,
    width: 200,
  },{
    dataIndex: 'in_ware_name',
    type: 'string',
    title: DB.STOCK_IO.IN_WARE_NAME,
    width: 200,
  },{
    dataIndex: 'remark',
    type: 'string',
    title: DB.STOCK_IO.REMARK,
    width: 300,
  }
]


export const json_user = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.ID,
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'dep_name',
    type: 'string',
    title: DB.USER.DEP_NAME,
    width: 120,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'usr',
    type: 'string',
    title: DB.USER.USR,
    width: 200,
     align: 'center',
  },{
    dataIndex: 'name',
    type: 'string',
    title: DB.USER.NAME,
    width: 200,
     align: 'center',
  },{
    dataIndex: 'pwd',
    type: 'string',
    title: DB.USER.PWD,
    width: 200,
    align: 'center',
    render: (text, r) => {
      var lastChar = text[text.length - 1];
      return <span>{`*****${lastChar}`}</span>
    }
  },{
    dataIndex: 'role',
    type: 'string',
    title: DB.USER.ROLE,
    width: 200,
     align: 'center',
  }
    
]


export const json_dep = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.DEP.ID,
    width: 60,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'name',
    type: 'string',
    title: DB.DEP.DEP_NAME,
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'addr',
    type: 'string',
    title: DB.DEP.DEP_ADDR,
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'phone',
    type: 'string',
    title: DB.DEP.DEP_PHONE,
    width: 100,
    fixed: 'left',
    align: 'center',
  }
]




export const json_site = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.ID,
    width: 100,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'name',
    type: 'string',
    title: DB.SITE.NAME,
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'dep_name',
    type: 'string',
    title: DB.SITE.DEP_NAME,
    width: 120,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'addr',
    type: 'string',
    title: DB.SITE.ADDR,
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'phone',
    type: 'string',
    title: DB.SITE.PHONE,
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'manager',
    type: 'string',
    title: DB.SITE.MANAGER,
    width: 100,
    fixed: 'left',
    align: 'center',
  }
]