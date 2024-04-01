/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Table, Space, Spin, Button, Modal, message, Select, DatePicker, Empty} from 'antd'
import {  PlusCircleOutlined,ExclamationCircleFilled,FileMarkdownOutlined,CheckOutlined,CloudDownloadOutlined } from '@ant-design/icons';
import cls from 'classnames'
import dayjs from 'dayjs'
import { useSearchParams } from 'react-router-dom';
import { observer,MobXProviderContext } from 'mobx-react'
import {API_SERVER} from '@/constant/apis'
import {json_user} from '@/constant/data'
import {getKeyField,clone,getBase64, genQR} from '@/util/fn'
import s from './index.module.less';
import {getColumnSearchProps} from '@/util/filter'
import { useLocation,useNavigate } from 'react-router-dom';
import FormMain from './FormMain'
import {jp} from '@constant/lang'


const { FN,MSG,DB,TXT } = jp

const { confirm } = Modal;



const User = () => {
  const navigate = useNavigate();
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
  const col = json_user.concat({
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
  col[1] = {...col[1],...getColumnSearchProps('dep_name',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[2] = {...col[2],...getColumnSearchProps('usr',doSearch,doReset,inputRef,searchedColumn,searchText)}
  col[3] = {...col[3],...getColumnSearchProps('name',doSearch,doReset,inputRef,searchedColumn,searchText)}
  

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
    if(!store.hasRoles([DB.ROLE.SYS])) navigate("/");
    setLoading(true)
    store.queryUsr(null).then(r=>{
      setLoading(false)
      setDs(r.data)
      setRefresh(false)
      console.log(r.data)
    })
  }, [refresh]);


  // 刪除數據
  const doDel = (e)=>{
    let params = { 
      id: e.id
    }
    setLoading(true)
    store.delUsr(params).then(r=>{
      setLoading(false)
      setDs(r.data)
      message.info(MSG.DEL_SUC)
      // console.log(r.data)
    })
  }

  const doEdit=(e)=>{
    setItem(e)
    setMethod('update')
    setShowForm(true)
  }


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

  return (
    
    <div className={s.index}>
      <Spin spinning={loading}>
        <div className={s.main}>
          <div className={s.fun}>
            <Space>
              <Button type="primary" icon={<PlusCircleOutlined/>} danger onClick={()=>doAdd()}>{FN.ADD}</Button>
            </Space>
          </div>
          <Table dataSource={ds} columns={col} scroll={{ x: 1000 }} pagination={{ defaultPageSize: 6 }}/>
        </div>


       {showForm && <FormMain {...{col, item, method, setRefresh, setShowForm, setLoading}}  />}

      </Spin >
    </div>
  )

}

export default  observer(User)