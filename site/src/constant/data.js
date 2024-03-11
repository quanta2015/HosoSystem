import search from '@/img/menu/search.svg'
import ware from '@/img/menu/ware.svg'
import rcamera from '@/img/menu/rcamera.svg'
import person from '@/img/menu/person.svg'
// import config   from '@/img/menu/config.svg'
import {API_SERVER} from '@/constant/apis'
import {Tag} from 'antd'

export const json_part = [
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
      width: 100,
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
    dataIndex: 'id',
    type: 'string',
    title: '編號',
    width: 100,
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
    dataIndex: 'id',
    type: 'string',
    title: '番号',
    width: 60,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'img',
    type: 'string',
    title: 'アイコン',
    width: 80,
    fixed: 'left',
    align: 'center',
    render: (url, r) => <img className="icon" src={`${API_SERVER}/${url}`} alt={r.name}/> 
  },{
    dataIndex: 'name',
    type: 'string',
    title: 'サプライヤー名',
    width: 100,
    align: 'center',
  },{
    dataIndex: 'phone',
    type: 'string',
    title: '連絡先',
    width: 200,
    align: 'center',
  },{
    dataIndex: 'addr',
    type: 'string',
    title: 'サプライヤーアドレース',
    width: 200,
  }
]





export const json_ware = [
  {
    dataIndex: 'id',
    type: 'string',
    title: '編號',
    width: 60,
    fixed: 'left',
    align: 'center',
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
    dataIndex: 'id',
    type: 'string',
    title: '編號',
    width: 60,
    fixed: 'left',
    align: 'center',
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
    width: 200,
  },{
    dataIndex: 'part_img',
    type: 'string',
    title: '部品圖標',
    width: 200,
    align: 'center',
    render: (url, r) => <img className="icon" src={`${API_SERVER}/${url}`} /> 
  },{
    dataIndex: 'part_code',
    type: 'string',
    title: '部品編碼',
    width: 200,
  },{
    dataIndex: 'part_name',
    type: 'string',
    title: '部品名稱',
    width: 100,
    align: 'center',
  },{
    dataIndex: 'model_name',
    type: 'string',
    title: '部品類型',
    width: 100,
    align: 'center',
  },{
    dataIndex: 'supply_name',
    type: 'string',
    title: '供應商',
    width: 100,
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
    dataIndex: 'id',
    type: 'string',
    title: '編號',
    width: 60,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'recept_code',
    type: 'string',
    title: '出入庫單號',
    width: 120,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'ware_name',
    type: 'string',
    title: '倉庫名稱',
    width: 200,
  },{
    dataIndex: 'part_img',
    type: 'string',
    title: '部品圖標',
    width: 200,
    align: 'center',
    render: (url, r) => <img className="icon" src={`${API_SERVER}/${url}`} /> 
  },{
    dataIndex: 'part_code',
    type: 'string',
    title: '部品編碼',
    width: 200,
  },{
    dataIndex: 'part_name',
    type: 'string',
    title: '部品名稱',
    width: 100,
    align: 'center',
  },{
    dataIndex: 'model_name',
    type: 'string',
    title: '部品類型',
    width: 100,
    align: 'center',
  },{
    dataIndex: 'supply_name',
    type: 'string',
    title: '供應商',
    width: 100,
    align: 'center',
  },{
    dataIndex: 'num',
    type: 'string',
    title: '數量',
    width: 100,
    align: 'center',
  }
]


export const json_user = [
  {
    dataIndex: 'id',
    type: 'string',
    title: '編號',
    width: 60,
    fixed: 'left',
    align: 'center',
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
    title: '編號',
    width: 60,
    fixed: 'left',
    align: 'center',
  },{
    dataIndex: 'name',
    type: 'string',
    title: '營業所',
    width: 100,
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
  }
]