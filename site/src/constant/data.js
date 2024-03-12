import search from '@/img/menu/search.svg'
import ware from '@/img/menu/ware.svg'
import rcamera from '@/img/menu/rcamera.svg'
import person from '@/img/menu/person.svg'
// import config   from '@/img/menu/config.svg'
import {API_SERVER} from '@/constant/apis'
import {Tag} from 'antd'
import {jp} from '@constant/lang'
const { DB } = jp


export const json_part = [
  {
      dataIndex: 'qrcode',
      type: 'string',
      title: DB.PART.QRCODE,
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
      render: (url, r) => <img src={!url.startsWith('http')?`${API_SERVER}/${url}`:url} alt={r.name}/> 
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
      title: DB.PART.MOD_NAME,
      width: 100,
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
    dataIndex: 'id',
    type: 'string',
    title: DB.MODEL.ID,
    width: 100,
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
    dataIndex: 'id',
    type: 'string',
    title: DB.SUPPLY.ID,
    width: 60,
    fixed: 'left',
    align: 'center',
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
    dataIndex: 'id',
    type: 'string',
    title: DB.WARE.ID,
    width: 60,
    fixed: 'left',
    align: 'center',
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
    dataIndex: 'id',
    type: 'string',
    title: DB.STOCK.ID,
    width: 60,
    fixed: 'left',
    align: 'center',
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
    width: 200,
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
    width: 200,
  },{
    dataIndex: 'part_name',
    type: 'string',
    title: DB.STOCK.PART_NAME,
    width: 200,
    align: 'center',
  },{
    dataIndex: 'model_name',
    type: 'string',
    title: DB.STOCK.MODEL_NAME,
    width: 200,
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
      text===0?<Tag color="blue">正常</Tag>:<Tag color="red">待盤點</Tag>
    
  }
]


export const json_stock_io = [
  {
    dataIndex: 'key',
    type: 'string',
    title: DB.STOCK_IO.ID,
    width: 60,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'recept_code',
    type: 'string',
    title: DB.STOCK_IO.RECEPT_CODE,
    width: 300,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'type',
    type: 'string',
    title: DB.STOCK_IO.WARE_NAME,
    width: 200,
  },{
    dataIndex: 'part_img',
    type: 'string',
    title: DB.STOCK_IO.PART_IMG,
    width: 200,
    align: 'center',
    render: (url, r) => <img className="icon" src={`${API_SERVER}/${url}`} /> 
  },{
    dataIndex: 'part_code',
    type: 'string',
    title: DB.STOCK_IO.PART_CODE,
    width: 200,
  },{
    dataIndex: 'part_name',
    type: 'string',
    title: DB.STOCK_IO.PART_NAME,
    width: 100,
    align: 'center',
  },{
    dataIndex: 'out_ware_name',
    type: 'string',
    title: DB.STOCK_IO.MODEL_NAME,
    width: 100,
    align: 'center',
  },{
    dataIndex: 'in_ware_name',
    type: 'string',
    title: DB.STOCK_IO.SUPPLY_NAME,
    width: 100,
    align: 'center',
  },{
    dataIndex: 'num',
    type: 'string',
    title: DB.STOCK_IO.NUM,
    width: 100,
    align: 'center',
  }
]


export const json_user = [
  {
    dataIndex: 'id',
    type: 'string',
    title: DB.USER.ID,
    width: 60,
    fixed: 'left',
    align: 'center',
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
    dataIndex: 'id',
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
    dataIndex: 'id',
    type: 'string',
    title: DB.SITE.ID,
    width: 60,
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
    dataIndex: 'name',
    type: 'string',
    title: DB.SITE.NAME,
    width: 100,
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