import search from '@/img/menu/search.svg'
import ware from '@/img/menu/ware.svg'
import rcamera from '@/img/menu/rcamera.svg'
import person from '@/img/menu/person.svg'
// import config   from '@/img/menu/config.svg'
import {API_SERVER} from '@/constant/apis'


export const json_part = [{
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




export const json_model = [{
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



export const json_supply = [{
      dataIndex: 'id',
      type: 'string',
      title: '編號',
      width: 60,
      fixed: 'left',
      align: 'center',
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





export const json_ware = [{
      dataIndex: 'id',
      type: 'string',
      title: '編號',
      width: 60,
      fixed: 'left',
      align: 'center',
    },{
      dataIndex: 'code',
      type: 'string',
      title: '倉庫編碼',
      width: 60,
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
