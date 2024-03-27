/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Table, Space, Spin, Button, Modal, message, Select, DatePicker,Empty} from 'antd'
import {  PlusCircleOutlined,ExclamationCircleFilled,FileMarkdownOutlined,CheckOutlined,MinusCircleOutlined,SearchOutlined,CloudDownloadOutlined  } from '@ant-design/icons';
import cls from 'classnames'
import dayjs from 'dayjs'
import { useSearchParams } from 'react-router-dom';
import { observer,MobXProviderContext } from 'mobx-react'
import {API_SERVER} from '@/constant/apis'
import {json_stock_io,ST} from '@/constant/data'
import {getKeyField,clone,getBase64, genQR} from '@/util/fn'
import s from './index.module.less';
import {getColumnSearchProps} from '@/util/filter'
import InFormMain from './InFormMain'
import OutFormMain from './OutFormMain'
import {jp} from '@constant/lang'


const { FN,MSG,DB,TXT } = jp
const { confirm } = Modal;

// console.log('stock')

const Stock = () => {
  const { store } = React.useContext(MobXProviderContext)
  const [searchParams] = useSearchParams();

  const [searchText, setSearchText] = useState('');
  const [searchedColumn, setSearchedColumn] = useState('');
  const inputRef = useRef(null);

  const [refresh,setRefresh] = useState(false)
  const [showInForm,setShowInForm] = useState(false)
  const [showOutForm,setShowOutForm] = useState(false)
  const [method, setMethod] = useState('Insert')
  const [loading, setLoading] = useState(false);
  const [ds, setDs] = useState(false);
  const [item,setItem]  = useState(null);
  const [move,setMove]  = useState(false);
  const [detail,setDetail]  = useState(false);

  const doSearch = (selectedKeys, confirm, dataIndex) => {
    confirm();
    setSearchText(selectedKeys[0]);
    setSearchedColumn(dataIndex);
  };

  const doReset = (clearFilters, dataIndex, confirm) => {
    if (clearFilters) {
      clearFilters();
      setSearchText('');
      setSearchedColumn(dataIndex);
      confirm();
    }
  };

  // 添加功能操作
  const col = json_stock_io.concat({
    title: FN.ACT,
    width: 200,
    align: 'center',
    fixed: 'right',
    render: o =>  (
      <Space>
        {( o.state === ST.OUT_AUDIT || 
           o.state === ST.IN_AUDIT ||
           o.state === ST.MOV_AUDIT )  && 
           <Button type="primary" onClick={()=>doAudit(o,false)}>{FN.AUDIT}</Button>}

        <Button type="primary" onClick={()=>doAudit(o,true)}>{FN.DTL}</Button>
      </Space>
    )
  })

  // 數據查詢過濾
  // col[1] = {...col[1],...getColumnSearchProps('state',doSearch,doReset,inputRef,searchedColumn,searchText,true)}
  col[2] = {...col[2],...getColumnSearchProps('type',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[3] = {...col[3],...getColumnSearchProps('out_ware_name',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[4] = {...col[4],...getColumnSearchProps('in_ware_name',doSearch,doReset,inputRef,searchedColumn,searchText)}


  // 加載數據
  useEffect(() => {
    setLoading(true)
    store.queryStockIO(null).then(r=>{
      setLoading(false)
      r.data.map(async o=> o.qrcode = await genQR(o.recept_code))
      setDs(r.data)
      setRefresh(false)
      console.log(r.data)
    })
  }, [refresh]);



  const doAudit=(e,readonly)=>{
    setDetail(readonly)
    setItem(e)
    setMethod('update')
    if (e.type ==='采购入库'||e.type==='退货入库'||e.type==='寄託') {
      setShowInForm(true)
    }else {
      setShowOutForm(true)
      setMove((e.type === '社內移動')?true:false)
    } 
  }



  return (
    
    <div className={s.index}>
      <Spin spinning={loading}>
        <div className={s.main}>
          <div className={s.fun}>
            <Space>
              {/*<Button type="primary" icon={<CloudDownloadOutlined />} onClick={()=>doExport()}>情報ダウンロード</Button>*/}

            </Space>
          </div>
          <Table dataSource={ds} columns={col} scroll={{ x: 1000 }} pagination={{ defaultPageSize: 6 }}/>
        </div>


       {showInForm && <InFormMain {...{col, item, method,detail, setRefresh, setShowInForm, setLoading}}  />}
       {showOutForm && <OutFormMain {...{col, item, method, detail, setRefresh, setShowOutForm, setLoading, move}}  />}

      </Spin >
    </div>
  )

}

export default  observer(Stock)