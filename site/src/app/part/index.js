/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Table, Space, Spin, Button, Modal, message, Select, DatePicker, Empty} from 'antd'
import {  PlusCircleOutlined,ExclamationCircleFilled,FileMarkdownOutlined,CheckOutlined,CloudDownloadOutlined } from '@ant-design/icons';
import cls from 'classnames'
import dayjs from 'dayjs'
import { useSearchParams } from 'react-router-dom';
import { observer,MobXProviderContext } from 'mobx-react'
import {API_SERVER} from '@/constant/apis'
import {json_part} from '@/constant/data'
import {filterData,getKeyField,clone,getBase64} from '@/util/fn'
import s from './index.module.less';
import {getColumnSearchProps} from '@/util/filter'
import QRCode from 'qrcode';
import FormMain from './FormMain'


const { confirm } = Modal;


const genQR = async (text) => {
  try {
    return await QRCode.toDataURL(text);
  } catch (err) {
    console.error(err);
  }
}


const Part = () => {
  const { store } = React.useContext(MobXProviderContext)
  const [searchParams] = useSearchParams();

  const [searchText, setSearchText] = useState('');
  const [searchedColumn, setSearchedColumn] = useState('');
  const inputRef = useRef(null);


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
  const col = json_part.concat({
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
  col[2] = {...col[2],...getColumnSearchProps('code',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[3] = {...col[3],...getColumnSearchProps('name',doSearch,doReset,inputRef,searchedColumn,searchText)}


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

  // 刪除數據
  const doDel = (e)=>{
    console.log(e)
    let params = { 
      id: e.id,
      tab: 'tab_part',
      view: 'view_part',
    }
    setLoading(true)
    store.delById(params).then(r=>{
      setLoading(false)
      r.data.map(async o=> o.qrcode = await genQR(o.code))
      setDs(r.data)
      // console.log(r.data)
    })
  }

  const doEdit=(e)=>{
    setItem(e)
    setMethod('update')
    setShowForm(true)
  }

  // 加載part數據
  useEffect(() => {
    let params = { tab: 'view_part' }
    setLoading(true)
    store.queryTable(params).then(r=>{
      setLoading(false)
      r.data.map(async o=> o.qrcode = await genQR(o.code))
      setDs(r.data)
      console.log(r.data)
    })
  }, []);


  const doAdd =()=>{
    setMethod('insert')
    setShowForm(true)
  }

  return (
    
    <div className={s.index}>
      <Spin spinning={loading}>
        <div className={s.main}>
          <div className={s.fun}>
            <Space>
              <Button type="primary" icon={<CloudDownloadOutlined />} onClick={()=>doAdd()}>情報ダウンロード</Button>
              <Button type="primary" icon={<PlusCircleOutlined/>} danger onClick={()=>doAdd()}>製品の追加</Button>
            </Space>
          </div>
          <Table dataSource={ds} columns={col} scroll={{ x: 1000 }} pagination={{ defaultPageSize: 6 }}/>
        </div>


       {showForm && <FormMain {...{col, item, method, setShowForm, setLoading}}  />}

      </Spin >
    </div>
  )

}

export default  observer(Part)