/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import { AutoComplete } from 'antd';
import {Input,  Space,  Form, Button, Tag, Row, Col, Select, Upload, Cascader, Modal, message} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,CloudUploadOutlined, DeleteOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import s from './index.module.less';
import { ST,ST_TXT } from '@/constant/data'
import {jp} from '@constant/lang'


const { FN,MSG,DB,TXT } = jp
const { TextArea } = Input;

const code = (o)=> (`# ${o.id} ${o.code} ${o.name}`)
const partFormat =(o,method,id)=> ({label: code(o), value:code(o)})
const getPart = (list,id, stockio_id)=> {
  let r = (list.filter(o=> o.id === id))[0]
  return `${stockio_id} ${r.id} ${r.code} ${r.name}`
}

const FormMain = ({col, item, method, detail, setRefresh, setShowInForm,setLoading}) => {
  const { store } = React.useContext(MobXProviderContext)
  // console.log(item,'up')

  const initType = method==='insert'?null:item.type
  const initInWare = method==='insert'?[null,null]:[item.in_dep_id,item.in_ware_id]
  // const initList = method==='insert'?[]:[]


  const [list, setList] = useState([]);
  const [type, setType] = useState(initType);
  const [inWare, setInWare] = useState(initInWare);
  const [optWare, setOptWare] = useState([]);
  const [optType, setOptType] = useState([
    {label:TXT.STOCK_IO_TYPE.BUY,value:TXT.STOCK_IO_TYPE.BUY},
    {label:TXT.STOCK_IO_TYPE.RETURN,value:TXT.STOCK_IO_TYPE.RETURN},
    {label:TXT.STOCK_IO_TYPE.TMP,value:TXT.STOCK_IO_TYPE.TMP},
  ]);
  const [part,setPart] = useState([])
  const [partFil,setPartFil] = useState([])
  const [remark, setRemark] = useState('');


  useEffect(() => {
    setLoading(true)
    store.queryWareCas(null).then(r=>{
      setLoading(false)
      // console.log(r.data)
      setOptWare(r.data)
    })
  }, []);

  useEffect(() => {
    setLoading(true)
    store.queryPartSel(null).then(r=>{
      setLoading(false)
      let part = r.data.map(o=> partFormat(o))
      setPart(r.data)
      setPartFil(part)
    })
  }, []);


  useEffect(() => {
    if (part.length>0) {
      const params = {
        recept_code: item?.recept_code,
        io: 'in',
      }
      setLoading(true)
      store.queryStockIOByCode(params).then(r=>{
        setLoading(false)
        // console.log(r.data)
        let _list = r.data.map(o=>({
          id:o.id, 
          key: getPart(part,o.part_id,o.id), 
          val: o.num, 
          state:o.state,
        }))
        setList(_list)
      })
    }
  }, [part]);

  // console.log(list,'list')


  // 添加json數據
  const doAddItem =()=>{
    list.push({key:'',val:''})
    setList([...list])
  }

  // 刪除json數據
  const doDelItem=(id)=>{
    list.splice(id,1)
    setList([...list])
  }

  // 修改數量
  const chgVal =(e,i)=>{
    const val = e.currentTarget.value
    list[i].val= parseInt(val)
    setList([...list])
  }

  // 選擇零件
  const doSelPart = (val,i) => {
    console.log(`Selected: ${val} ${i}`);
    // const val = e.currentTarget.value
    list[i].key= val  //parseInt(val.split(' ')[0])
    setList([...list])
  }


  const doSearch = (value) => {
    const filteredData = part.filter(o => 
     o.code.toLowerCase().includes(value.toLowerCase()) || o.name.toLowerCase().includes(value.toLowerCase())
    )
    setPartFil(filteredData.map(o=> partFormat(o)))
  }




  const doSave =()=>{

    const _list = list.map(o=>{
      let data = o.key.split(' ')

      return {
        id: o.id,
        key: parseInt(data[1]),
        val: o.val,
      }
    })
    const params ={
      recept_code: item?.recept_code,
      method,
      type,
      list: _list,
      in_dep_id: inWare[0],
      in_ware_id: inWare[1],
    }

    if (type === null) {
      message.info('請選擇入庫類型')
      return
    }
    if ((inWare[0] === null)||(inWare[1] === null)) {
      message.info('請選擇倉庫')
      return
    }
    if (list.length === 0) {
      message.info('請添加部品')
      return 
    }
    // console.log(params)

    setLoading(true)
    store.saveStockIO(params).then(r=>{
      setLoading(false)
      setShowInForm(false)
      setRefresh(true)
      message.info('保存成功')
    })
  }


  const doAudit =(pass)=>{

    
    const params ={
      recept_code: item?.recept_code,
      state: pass?ST.IN_READY:ST.IN_NOPAS,
      remark,
    }
    setLoading(true)
    store.auditStockIO(params).then(r=>{
      setLoading(false)
      setRefresh(true)
      setShowInForm(false)
      message.info('审核成功')
    })
  }



  return (
    <div className={s.form}>
      <div className={s.wrap}>
          <div className={s.tl}>入庫信息</div>
          <div className={s.basic}>
            <div className={s.head}>
              <h1>{TXT.BAS_INFO}</h1>
            </div>
            <div className={s.row}>
              <span>入庫類型</span>
              <Select options={optType} className={s.select} onChange={(e)=>setType(e)} value={type} disabled={detail}/>
              <span>入庫倉庫</span>
              <Cascader options={optWare} className={s.select} onChange={(e)=>setInWare(e)} value={inWare} disabled={detail}/>
            </div>
          </div>

          <div className={s.head}>
            <h1>入庫部品</h1>
          </div>  

          <div className={s.info}>
            <div className={s.th}>
              <span>当前状态</span>
              <span>部品信息</span>
              <span>入庫數量</span>
            </div>
            {list.map((o,i)=>
                <div key={i} className={s.row}>
                  <i><Tag>{ST_TXT[o.state]}</Tag></i>
                  <AutoComplete 
                    options={partFil} 
                    value={o.key} 
                    onSearch={doSearch} 
                    onChange={(val)=>doSelPart(val,i)} 
                    style={{'width':'500px','marginRight':'20px'}} 
                    disabled={detail}
                    />
                  <Input onChange={(e)=>chgVal(e,i)} value={o.val} disabled={detail}/>
                </div>
              )}
          </div>

          <div className={s.head}>
            <h1>审核意见</h1>
          </div>
          <TextArea onChange={(e)=>setRemark(e.currentTarget.value)} value={remark} disabled={detail}/>

          <div className={s.fun}>
            {( item.state === ST.OUT_AUDIT || 
               item.state === ST.IN_AUDIT ||
               item.state === ST.MOV_AUDIT )  && 
            <>
              <Button type="default" style={{width:'120px'}} onClick={()=>doAudit(true)} >{FN.PASS}</Button>  
              <Button type="default" style={{width:'120px'}} onClick={()=>doAudit(false)} >{FN.REJECT}</Button>
            </>} 
            <Button type="default" style={{width:'120px'}} onClick={()=>setShowInForm(false)} >{FN.CLS}</Button>  
          </div>
      </div>

    </div>
    
  )

}

export default  observer(FormMain)