/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import { AutoComplete } from 'antd';
import {Input,  Space,  Form, Button, Row, Col, Select, Upload, Tag, Cascader, Modal, message, InputNumber} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,CloudUploadOutlined, DeleteOutlined, CloseOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import s from './index.module.less';
import {jp} from '@constant/lang'
import {ST_TXT} from '@/constant/data'

const { FN,MSG,DB,TXT } = jp
const { TextArea } = Input

const code = (o)=> (`# ${o.id} ${o.code} ${o.name}`)
const partFormat =(o,method,id)=> ({label: code(o), value:code(o)})
const getPart = (list,id, stockio_id)=> {
  let r = (list.filter(o=> o.id === id))[0]
  return `${stockio_id} ${r.id} ${r.code} ${r.name}`
}

const FormMain = ({ds, setShowInForm,setLoading, setShowScan}) => {
  const { store } = React.useContext(MobXProviderContext)
  // console.log(ds,'ds')

  const [list,setList] = useState(ds)

  useEffect(() => {
   
  }, []);


  const isReadOnly =(state)=>{
    return (state === 21)?false:true
  }

  const doChgNum=(e,i)=>{
    list[i].num_real = e
    setList([...list])
  }

  const doChgRemark=(e,i)=>{
    console.log(e)
    const val = e.currentTarget.value
    list[i].remark = val
    setList([...list])
  }



  const doClose=(e,i)=>{
    setShowInForm(false)
    setShowScan(false)
  }


  const doInWare=(o,i,mode)=>{
    const params ={
      mode,
      ...o
    }


    setLoading(true)
    store.procStockIO(params).then(r=>{
      setLoading(false)
      r.data.map(o=>{ o.num_real = o.num })
      setList([...r.data])
      message.info('入库信息保存成功')
    })



    console.log(params)
  }



  return (
    <div className={s.form}>
      <div className={s.wrap}>
        <div className={s.hd}>
          <span>{ds[0].type} [{ds[0].in_ware_name}]</span>
          
          <Button onClick={doClose}><CloseOutlined /></Button>
        </div>
        {list.map((o,i)=>
          <div className={s.item} key={i}>
            <span className={s.state}><Tag>{ST_TXT[o.state]}</Tag></span>
            <div className={s.itemwarp}>
              <div className={s.info}>
                <div className={s.row}>
                  <label>零件编号</label>
                  <span>{o.part_code}</span>
                </div>
                <div className={s.row}>
                  <label>零件名称</label>
                  <span>{o.part_name}</span>
                </div>
                <div className={s.row_wrap}>
                  <div className={s.row}>
                    <label>入库数量</label>
                    <span>{o.num}</span>
                  </div>

                  {o.state === 21 && 
                  <div className={s.row}>
                    <label>实际数量</label>
                    <InputNumber value={o.num_real} onChange={(e)=>doChgNum(e,i)} max={o.num} min={o.min} />
                  </div>}
                </div>

                <div className={s.row}>
                  <label>备注</label>
                  <TextArea value={o.remark} onChange={(e)=>doChgRemark(e,i)}  readOnly={isReadOnly(o.state)} />
                </div>

              </div>
            </div>

            {o.state === 21 && 
            <div className={s.fun}>
              <Button onClick={()=>doInWare(o,i,'in')}>入库成功</Button>
              <Button onClick={()=>doInWare(o,i,'in_err')}>入库错误</Button>
            </div>}
            
          </div>

          )}
      </div>

    </div>
    
  )

}

export default  observer(FormMain)