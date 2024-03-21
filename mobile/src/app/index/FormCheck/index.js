/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import { AutoComplete } from 'antd';
import {Input,  Space,  Form, Button, Row, Col, Select, Empty,  Tag, Cascader, Modal, message, InputNumber} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,ExclamationCircleFilled,LeftOutlined, SearchOutlined,CloudUploadOutlined, DeleteOutlined, CloseOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import s from './index.module.less';
import {jp} from '@constant/lang'
import {ST_TXT,ST} from '@/constant/data'

const { confirm } = Modal;
const { FN,MSG,DB,TXT } = jp
const { TextArea } = Input

const code = (o)=> (`# ${o.id} ${o.code} ${o.name}`)
const partFormat =(o,method,id)=> ({label: code(o), value:code(o)})
const getPart = (list,id, stockio_id)=> {
  let r = (list.filter(o=> o.id === id))[0]
  return `${stockio_id} ${r.id} ${r.code} ${r.name}`
}



const FormCheck = ({setShowCheck,setLoading}) => {
  const { store } = React.useContext(MobXProviderContext)

  const [ds,setDs] = useState([])
  const [optWare, setOptWare] = useState([]);
  const [ware, setWare] = useState(null);


  useEffect(() => {
    setLoading(true)
    store.queryWareCas(null).then(r=>{
      setLoading(false)
      // console.log(r.data)
      setOptWare(r.data)
    })
  }, []);







  const showConfirm = (o,i,mode) => {
    confirm({
      title: MSG.WARE_CFM,
      icon: <ExclamationCircleFilled />,
      okType: 'danger',
      okText: FN.OK,
      cancelText: FN.NO,
      onOk() {
        // doWare(o,i,mode)
      },
    });
  };


  const doChgNum=(e,i)=>{
    ds[i].num_real = e
    setDs([...ds])
  }


  const doSave =()=>{

  }

  const doClose =()=>{
    setShowCheck(false)
  }


  const doSelWare =(e)=>{
    setWare(e[1])
    setDs([])

    let params = {
      ware_id: e[1]
    }
    store.queryStockByWare(params).then(r=>{
      setLoading(false)

      // 沒有數據
      if (r.data.length === 0 ) {
        message.info('該倉庫沒有部品')
        return
      }

      console.log(r.data)
      setDs(r.data)
    })
  }


  

  const doLoadStock =()=>{
    let params = {
      ware_id: ware
    }
    store.queryStockByWare(params).then(r=>{
      setLoading(false)

      // 沒有數據
      if (r.data.length === 0 ) {
        message.info('該倉庫沒有部品')
        return
      }

      console.log(r.data)
      setDs(r.data)
    })
  }

  return (
    <div className={s.form}>
      <div className={s.wrap}>
        <div className={s.hd}>
          <div className={s.close} onClick={doClose}><LeftOutlined /></div>
          <Cascader 
            options={optWare} 
            className={s.select} 
            onChange={doSelWare} 
            value={ware} 
            />
          {/*<Button onClick={doLoadStock}><SearchOutlined /></Button>*/}
        </div>

        

        {ds.map((o,i)=>
          <div className={s.item} key={i}>
            <div className={s.itemwarp}>
              <div className={s.info}>
                <div className={s.row}>
                  <label>零件编号</label>
                  <span>{o.code}</span>
                </div>
                <div className={s.row}>
                  <label>零件名称</label>
                  <span>{o.name}</span>
                </div>
                <div className={s.row_wrap}>
                  <div className={s.row}>
                    <label>库存数量</label>
                    <span>{o.num}</span>
                  </div>

                  <div className={s.row}>
                    <label>实际数量</label>
                    <InputNumber value={o.num_real} onChange={(e)=>doChgNum(e,i)} max={o.num} min={o.min} />
                  </div>
                </div>

              </div>
            </div>

            <div className={s.fun}>
              <Button type="primary" size="large" onClick={()=>doSave(o,i)} block>保存</Button>
            </div>
          </div>
          )}

        {ds.length===0 && <div className={s.emptyWarp}><Empty /></div>}
        
      </div>

    </div>
    
  )

}

export default  observer(FormCheck)