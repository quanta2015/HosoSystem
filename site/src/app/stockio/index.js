/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Table, Space, Spin, Button, Modal, message, Select, DatePicker,Empty} from 'antd'
import {  PlusCircleOutlined,ExclamationCircleFilled,FileMarkdownOutlined,CheckOutlined,MinusCircleOutlined,SearchOutlined,CloudDownloadOutlined  } from '@ant-design/icons';
import cls from 'classnames'
import dayjs from 'dayjs'
import { useSearchParams } from 'react-router-dom';
import { observer,MobXProviderContext } from 'mobx-react'
import {API_SERVER} from '@/constant/apis'
import {json_stock_io} from '@/constant/data'
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
    render: o => (
      <Space>
        <Button type="primary" onClick={()=>doEdit(o)}>{FN.EDIT}</Button>
        <Button type="primary" danger onClick={()=>showDelConfirm(o)}>{FN.DEL}</Button>
      </Space>
    ),
  })

  // 數據查詢過濾
  // col[1] = {...col[1],...getColumnSearchProps('state',doSearch,doReset,inputRef,searchedColumn,searchText,true)}
  col[2] = {...col[2],...getColumnSearchProps('type',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[3] = {...col[3],...getColumnSearchProps('out_ware_name',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[4] = {...col[4],...getColumnSearchProps('in_ware_name',doSearch,doReset,inputRef,searchedColumn,searchText)}


  const showDelConfirm = (e) => {
    confirm({
      title: MSG.CFM,
      icon: <ExclamationCircleFilled />,
      okType: 'danger',
      okText: FN.OK,
      cancelText: FN.NO,
      onOk() {
        doDel(e)
      },
    });
  };

  

  // 加載數據
  useEffect(() => {
    setLoading(true)
    store.queryStockIO(null).then(r=>{
      setLoading(false)
      setDs(r.data)
      setRefresh(false)
      console.log(r.data)
    })
  }, [refresh]);


  // 刪除數據
  const doDel = (e)=>{
    let params = { 
      recept_code: e.recept_code
    }
    setLoading(true)
    store.delStockIO(params).then(r=>{
      setLoading(false)
      setDs(r.data)
      // console.log(r.data)
    })
  }

  const doEdit=(e)=>{

    // console.log(e)
    setItem(e)
    setMethod('update')

    if (e.type ==='采购入库'||e.type==='退货入库'||e.type==='寄託') {
      setShowInForm(true)
    }else {
      setShowOutForm(true)
      setMove((e.type === '社內移動')?true:false)
    } 
  }


  const doAddIn =()=>{
    setItem(null)
    setMethod('insert')
    setShowInForm(true)
  }


  const doAddOut =()=>{
    setItem(null)
    setMethod('insert')
    setShowOutForm(true)
    setMove(false)
  }

  const doAddMove =()=>{
    setItem(null)
    setMethod('insert')
    setShowOutForm(true)
    setMove(true)
  }


  const doExport =()=>{
    setLoading(true)
    store.exportStock().then(r => {
      setLoading(false)
      window.open(`${API_SERVER}/${r.file}`, '_blank');
      message.info(MSG.EXPT_SUC)
    })
  }

  return (
    
    <div className={s.index}>
      <Spin spinning={loading}>
        <div className={s.main}>
          <div className={s.fun}>
            <Space>
              {/*<Button type="primary" icon={<CloudDownloadOutlined />} onClick={()=>doExport()}>情報ダウンロード</Button>*/}

              <Button type="primary" icon={<PlusCircleOutlined/>}  onClick={()=>doAddIn()}>入庫伝票</Button>
              <Button type="primary" icon={<MinusCircleOutlined/>}  onClick={()=>doAddOut()}>出庫伝票</Button>
              <Button type="primary" icon={<MinusCircleOutlined/>}  onClick={()=>doAddMove()}>社內移動</Button>
            </Space>
          </div>
          <Table dataSource={ds} columns={col} scroll={{ x: 1000 }} pagination={{ defaultPageSize: 6 }}/>
        </div>


       {showInForm && <InFormMain {...{col, item, method, setRefresh, setShowInForm, setLoading}}  />}
       {showOutForm && <OutFormMain {...{col, item, method, setRefresh, setShowOutForm, setLoading, move}}  />}

      </Spin >
    </div>
  )

}

export default  observer(Stock)