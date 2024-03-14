/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Table, Space, Spin, Button, Modal, message, Select, DatePicker, Empty} from 'antd'
import {  PlusCircleOutlined,ExclamationCircleFilled,FileMarkdownOutlined,CheckOutlined,MinusCircleOutlined,SearchOutlined,CloudDownloadOutlined  } from '@ant-design/icons';
import cls from 'classnames'
import dayjs from 'dayjs'
import { useSearchParams } from 'react-router-dom';
import { observer,MobXProviderContext } from 'mobx-react'
import {API_SERVER} from '@/constant/apis'
import {json_stock} from '@/constant/data'
import {getKeyField,clone,getBase64, genQR} from '@/util/fn'
import s from './index.module.less';
import {getColumnSearchProps} from '@/util/filter'

import FormMain from './FormMain'
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
  const [showForm,setShowForm] = useState(false)
  const [method, setMethod] = useState('Insert')
  const [loading, setLoading] = useState(false);
  const [ds, setDs] = useState(false);
  const [item,setItem]  = useState(null);

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
  const col = json_stock.concat({
    title: FN.ACT,
    width: 200,
    align: 'center',
    fixed: 'right',
    render: o => (
      <Space>
        <Button type="primary"  onClick={()=>showDetail(o)}>{FN.DTL}</Button>
      </Space>
    ),
  })
  // 數據查詢過濾
  col[1] = {...col[1],...getColumnSearchProps('ware_code',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[2] = {...col[2],...getColumnSearchProps('ware_name',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[4] = {...col[4],...getColumnSearchProps('part_code',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[5] = {...col[5],...getColumnSearchProps('part_name',doSearch,doReset,inputRef,searchedColumn,searchText)}


  

  // 加載數據
  useEffect(() => {
    setLoading(true)
    store.queryStock(null).then(r=>{
      setLoading(false)
      setDs(r.data)
      setRefresh(false)
      // console.log(r.data)
    })
  }, [refresh]);


  const showDetail =()=>{
    
  }


  const doCheck = (e)=>{
    let params = { 
      // id: e.id
    }
    setLoading(true)
    store.checkStock(params).then(r=>{
      setLoading(false)
      setDs(r.data)
      // console.log(r.data)
    })
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
              <Button type="primary" icon={<CloudDownloadOutlined />} onClick={()=>doExport()}>{FN.DL}</Button>
              <Button type="primary" icon={<SearchOutlined/>}  onClick={()=>doCheck() }>{FN.CHK}</Button>
            </Space>
          </div>
          <Table dataSource={ds} columns={col} scroll={{ x: 1000 }} pagination={{ defaultPageSize: 6 }}/>
        </div>



      </Spin >
    </div>
  )

}

export default  observer(Stock)