/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Table, Space, Spin, Button, Modal, message, Select, DatePicker, Empty} from 'antd'
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

import FormMain from './FormMain'


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
  const col = json_stock_io.concat({
    title: '機能',
    width: 200,
    align: 'center',
    fixed: 'right',
    render: o => (
      <Space>
        <Button type="primary" onClick={()=>doEdit(o)}>編集</Button>
        <Button type="primary" danger onClick={()=>showDelConfirm(o)}>刪除</Button>
      </Space>
    ),
  })

  // 數據查詢過濾
  col[1] = {...col[1],...getColumnSearchProps('recept_code',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[2] = {...col[2],...getColumnSearchProps('type',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[3] = {...col[3],...getColumnSearchProps('out_ware_name',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[4] = {...col[4],...getColumnSearchProps('in_ware_name',doSearch,doReset,inputRef,searchedColumn,searchText)}


  const showDelConfirm = (e) => {
    confirm({
      title: '确认要删除记录?',
      icon: <ExclamationCircleFilled />,
      okType: 'danger',
      okText: '确 定',
      cancelText: '取 消',
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
    setItem(e)
    setMethod('update')
    setShowForm(true)
  }


  const doAdd =()=>{
    setItem(null)
    setMethod('insert')
    setShowForm(true)
  }


  const doExport =()=>{
    setLoading(true)
    store.exportStock().then(r => {
      setLoading(false)
      window.open(`${API_SERVER}/${r.file}`, '_blank');
      message.info("导出成功！")
    })
  }

  return (
    
    <div className={s.index}>
      <Spin spinning={loading}>
        <div className={s.main}>
          <div className={s.fun}>
            <Space>
              <Button type="primary" icon={<CloudDownloadOutlined />} onClick={()=>doExport()}>情報ダウンロード</Button>

              <Button type="primary" icon={<PlusCircleOutlined/>}  onClick={()=>doAdd()}>申請製品入庫伝票</Button>
              <Button type="primary" icon={<MinusCircleOutlined/>}  onClick={()=>doAdd()}>申請製品出庫伝票</Button>
            </Space>
          </div>
          <Table dataSource={ds} columns={col} scroll={{ x: 1000 }} pagination={{ defaultPageSize: 6 }}/>
        </div>


       {showForm && <FormMain {...{col, item, method, setRefresh, setShowForm, setLoading}}  />}

      </Spin >
    </div>
  )

}

export default  observer(Stock)