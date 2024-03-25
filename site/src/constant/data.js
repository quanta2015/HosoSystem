import search from '@/img/menu/search.svg'
import ware from '@/img/menu/ware.svg'
import rcamera from '@/img/menu/rcamera.svg'
import person from '@/img/menu/person.svg'
// import config   from '@/img/menu/config.svg'
import {API_SERVER} from '@/constant/apis'
import {Tag} from 'antd'
import {jp} from '@constant/lang'
const { DB } = jp


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
  10:'出庫待審核',
  11:'待出庫',
  12:'出庫完成',
  13:'出庫錯誤',
  14:'出庫审核未通过',
  20:'入庫待審核',
  21:'待入庫',
  22:'入庫完成',
  23:'入庫出錯',
  24:'部分入庫',
  25:'入庫审核未通过',
  30:'移动待審核',
  31:'待移动',
  32:'移动完成',
  33:'移动錯誤',
  34:'移动审核未通过' 
}

const pageSize = 6

export const json_part = [
  {
      dataIndex: 'key',
      type: 'string',
      title: '编号',
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
      title: '二維碼',
      width: 100,
      req: true,
      fixed: 'left',
      render: (text, r) => <img src={text} alt={r.name}/> 
    },{
      dataIndex: 'img',
      type: 'string',
      title: '製品圖像',
      width: 100,
      req: true,
      fixed: 'left',
      render: (url, r) => <img src={!url.startsWith('http')?`${API_SERVER}/${url}`:url} alt={r.name}/> 
    },{
      dataIndex: 'code',
      type: 'string',
      title: '製品ID',
      key: true,
      width: 200,
      align: 'center',
      fixed: 'left',
      req: false,
    },{
      dataIndex: 'name',
      type: 'string',
      title: '製品名称',
      width: 200,
      req: true,
    },
    {
      dataIndex: 'mod_name',
      type: 'string',
      title: '製品種類',
      width: 120,
      req: false,
    },
    {
      dataIndex: 'sup_name',
      type: 'string',
      title: '供應商名稱',
      width: 200,
      req: true,
    },{
      dataIndex: 'sup_phone',
      type: 'string',
      title: '供應商電話',
      width: 120,
      req: true,
    },{
      dataIndex: 'sup_addr',
      type: 'string',
      title: '供應商地址',
      width: 200,
      req: true,
    }, 
]




export const json_model = [
  {
    dataIndex: 'key',
    type: 'string',
    title: '編號',
    width: 100,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'name',
    type: 'string',
    title: '類型',
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
    title: '編號',
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'img',
    type: 'string',
    title: '圖標',
    width: 80,
    fixed: 'left',
    align: 'center',
    render: (url, r) => <img className="icon" src={`${API_SERVER}/${url}`} alt={r.name}/> 
  },{
    dataIndex: 'name',
    type: 'string',
    title: '供應商',
    width: 100,
    align: 'center',
  },{
    dataIndex: 'phone',
    type: 'string',
    title: '供應商電話',
    width: 200,
    align: 'center',
  },{
    dataIndex: 'addr',
    type: 'string',
    title: '供應商地址',
    width: 200,
  }
]





export const json_ware = [
  {
    dataIndex: 'key',
    type: 'string',
    title: '編號',
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'dep_name',
    type: 'string',
    title: '所屬營業所',
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'code',
    type: 'string',
    title: '倉庫編碼',
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'name',
    type: 'string',
    title: '倉庫名稱',
    width: 200,
  },{
    dataIndex: 'addr',
    type: 'string',
    title: '倉庫地址',
    width: 200,
  },{
    dataIndex: 'manager',
    type: 'string',
    title: '負責人',
    width: 100,
    align: 'center',
  }
]



export const json_stock = [
  {
    dataIndex: 'key',
    type: 'string',
    title: '編號',
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'ware_code',
    type: 'string',
    title: '倉庫編碼',
    width: 120,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'ware_name',
    type: 'string',
    title: '倉庫名稱',
    width: 150,
  },{
    dataIndex: 'part_img',
    type: 'string',
    title: '部品圖標',
    width: 100,
    align: 'center',
    render: (url, r) => <img className="icon" src={`${API_SERVER}/${url}`} /> 
  },{
    dataIndex: 'part_code',
    type: 'string',
    title: '部品編碼',
    width: 150,
  },{
    dataIndex: 'part_name',
    type: 'string',
    title: '部品名稱',
    width: 150,
    align: 'center',
  },{
    dataIndex: 'model_name',
    type: 'string',
    title: '部品類型',
    width: 150,
    align: 'center',
  },{
    dataIndex: 'supply_name',
    type: 'string',
    title: '供應商',
    width: 200,
    align: 'center',
  },{
    dataIndex: 'num',
    type: 'string',
    title: '數量',
    width: 100,
    align: 'center',
  },{
    dataIndex: 'status',
    type: 'string',
    title: '狀態',
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
    title: '編號',
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'qrcode',
    type: 'string',
    title: '二维码',
    width: 100,
    fixed: 'left',
    align: 'center',
    render: (text, r) => <img src={text} alt={r.name}/> 
  },{
    dataIndex: 'state_text',
    type: 'string',
    title: '狀態',
    width: 150,
    fixed: 'left',
    align: 'center',
    render:(text,r)=> <Tag color="blue">{text}</Tag>
  },{
    dataIndex: 'recept_code',
    type: 'string',
    title: '出入庫單號',
    width: 200,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'type',
    type: 'string',
    title: '類型',
    width: 150,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'out_ware_name',
    type: 'string',
    title: '出庫倉庫名稱',
    width: 200,
  },{
    dataIndex: 'in_ware_name',
    type: 'string',
    title: '入庫倉庫名稱',
    width: 200,
  },{
    dataIndex: 'remark',
    type: 'string',
    title: '备注',
    width: 300,
  }
]


export const json_user = [
  {
    dataIndex: 'key',
    type: 'string',
    title: '編號',
    width: 60,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'dep_name',
    type: 'string',
    title: '所屬部門',
    width: 120,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'usr',
    type: 'string',
    title: '賬號',
    width: 200,
     align: 'center',
  },{
    dataIndex: 'name',
    type: 'string',
    title: '用戶名',
    width: 200,
     align: 'center',
  },{
    dataIndex: 'pwd',
    type: 'string',
    title: '密碼',
    width: 200,
    align: 'center',
    render: (text, r) => {
      var lastChar = text[text.length - 1];
      return <span>{`*****${lastChar}`}</span>
    }
  },{
    dataIndex: 'role',
    type: 'string',
    title: '角色',
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
    dataIndex: 'key',
    type: 'string',
    title: '編號',
    width: 100,
    align: 'center',
    req: true,
    fixed: 'left',
  },{
    dataIndex: 'name',
    type: 'string',
    title: '現場名稱',
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'dep_name',
    type: 'string',
    title: '所屬營業所',
    width: 120,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'addr',
    type: 'string',
    title: '地址',
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'phone',
    type: 'string',
    title: '聯繫方式',
    width: 100,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'manager',
    type: 'string',
    title: '負責人',
    width: 100,
    fixed: 'left',
    align: 'center',
  }
]