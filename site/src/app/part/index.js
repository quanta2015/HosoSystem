/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Table, Space, Spin, Button, Modal, message, Select, DatePicker, Empty, Upload} from 'antd'
import {  PlusCircleOutlined,ExclamationCircleFilled,FileMarkdownOutlined,CheckOutlined,CloudDownloadOutlined,CloudUploadOutlined } from '@ant-design/icons';
import cls from 'classnames'
import dayjs from 'dayjs'
import { useSearchParams } from 'react-router-dom';
import { observer,MobXProviderContext } from 'mobx-react'
import {API_SERVER} from '@/constant/apis'
import {json_part} from '@/constant/data'
import {filterData,getKeyField,clone,getBase64, genQR} from '@/util/fn'
import s from './index.module.less';
import {getColumnSearchProps} from '@/util/filter'

import FormMain from './FormMain'
import {jp} from '@constant/lang'


const { FN,MSG,DB,TXT } = jp

const { confirm } = Modal;



const Part = () => {
  const uploadRef = useRef(null);
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
  const col = json_part.concat({
    title: FN.ACT,
    width: 240,
    align: 'center',
    fixed: 'right',
    render: o => (
      <Space>
        <Button type="primary" onClick={()=>doEdit(o,true)}>{FN.DTL}</Button>
        <Button type="primary" onClick={()=>doEdit(o,false)}>{FN.EDIT}</Button>
        <Button type="primary" danger onClick={()=>showDelConfirm(o)}>{FN.DEL}</Button>
      </Space>
    ),
  })
  // 數據查詢過濾
  col[3] = {...col[3],...getColumnSearchProps('code',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[4] = {...col[4],...getColumnSearchProps('name',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[5] = {...col[5],...getColumnSearchProps('mod_name',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[6] = {...col[6],...getColumnSearchProps('sup_name',doSearch,doReset,inputRef,searchedColumn,searchText)}


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

  // 刪除數據
  const doDel = (e)=>{
    // console.log(e)
    let params = { 
      id: e.id,
      tab: 'tab_part',
      view: 'view_part',
    }
    setLoading(true)
    store.delById(params).then(r=>{
      setLoading(false)
      // r.data.map(async o=> o.qrcode = await genQR(o.code))
      setDs(r.data)
      // console.log(r.data)
    })
  }

  const doEdit=(e,readonly)=>{
    setItem(e)
    setMethod('update')
    setShowForm(true)
    setDetail(readonly)
  }

  // 加載part數據
  useEffect(() => {
    let params = { tab: 'view_part' }
    setLoading(true)
    store.queryTable(params).then(r=>{
      setLoading(false)
      // r.data.map(async o=> o.qrcode = await genQR(o.code))
      setDs(r.data)
      setRefresh(false)
      console.log(r.data)
    })
  }, [refresh]);


  const doAdd =()=>{
    setMethod('insert')
    setShowForm(true)
  }


  const doExport =()=>{
    setLoading(true)
    store.exportPart().then(r => {
      setLoading(false)
      window.open(`${API_SERVER}/${r.file}`, '_blank');
      message.info(MSG.EXPT_SUC)
    })
  }


  const importPart =()=>{
    setLoading(true)
    store.importPart().then(r => {
      setLoading(false)
      
    })
  }


  const props = {
    name: 'file',
    maxCount: 1,
    action: `${API_SERVER}/importPart`, 
    onChange(e) {
      if ((e.file.status === 'done')&&(e.file.response.success)) {
        message.info(e.file.response.msg)
        // setDs(e.file.response.data)
      } else if (e.file.status === 'error') {
        console.log(`${e.file.name} file upload failed.`);
      }
    },
  };
  

  return (
    
    <div className={s.index}>
      <Spin spinning={loading}>
        <div className={s.main}>
          <div className={s.fun}>
            <Space>
              <Upload {...props}  ><Button icon={<CloudUploadOutlined />} type="primary" ref={uploadRef}> {FN.UP}</Button> </Upload>
              <Button type="primary" icon={<CloudDownloadOutlined />} onClick={()=>doExport()}>{FN.DL}</Button>
              <Button type="primary" icon={<PlusCircleOutlined/>} danger onClick={()=>doAdd()}>{FN.ADD}</Button>
            </Space>
          </div>
          <Table dataSource={ds} columns={col} scroll={{ x: 1000 }} pagination={{ defaultPageSize: 6 }}/>
        </div>


       {showForm && <FormMain {...{col, item, method, detail, setRefresh, setShowForm, setLoading}}  />}

      </Spin >
    </div>
  )

}

export default  observer(Part)