/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import { AutoComplete } from 'antd';
import {Input, InputNumber, Space,  Form, Button, Row, Col, Select, Upload, Cascader, Modal,Tag, message} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,CloudUploadOutlined, DeleteOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import {ST_TXT} from '@/constant/data'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import s from './index.module.less';
import {jp} from '@constant/lang'

const { FN,MSG,DB,TXT } = jp

const code = (o)=> (`# ${o.id} ${o.code} ${o.name}`)
const nc = (o)=> (`# ${o.part_id} ${o.code} ${o.name}`)
// const partFormat =(o,method)=> ({label: code(o), value:code(o)})

const partFormat =(o,method)=> {
  if (method === 'insert') {
    return ({label: nc(o), value:nc(o)})
  }else{
    return ({label: code(o), value:code(o)})
  }
}


const getPart = (list,id, stockio_id)=> {
  let r = (list.filter(o=> o.id === id))[0]
  return `${stockio_id} ${r.id} ${r.code} ${r.name}`
}

const FormMain = ({col, item, method, detail, setRefresh, setShowOutForm,setLoading,move}) => {
  const { store } = React.useContext(MobXProviderContext)
  // console.log(item,'up')



  const initType = method==='insert'?(move?TXT.STOCK_IO_TYPE.MOVE:null):item.type
  const initInWare = method==='insert'?[null,null]:[item.in_dep_id,item.in_ware_id]
  const initOutWare = method==='insert'?[null,null]:[item.out_dep_id,item.out_ware_id]
 

  const [list, setList] = useState([]);
  const [type, setType] = useState(initType);


  
  const [inWare, setInWare] = useState(initInWare);
  const [outWare, setOutWare] = useState(initOutWare);
  const [optWare, setOptWare] = useState([]);
  const [optType, setOptType] = useState([
    {label:TXT.STOCK_IO_TYPE.SEL,value:TXT.STOCK_IO_TYPE.SEL},
    {label:TXT.STOCK_IO_TYPE.USE,value:TXT.STOCK_IO_TYPE.USE},
  ]);


  const [part,setPart] = useState([])
  const [partFil,setPartFil] = useState([])


  // 查詢倉庫數據
  useEffect(() => {
    setLoading(true)
    store.queryWareCas(null).then(r=>{
      setLoading(false)
      // console.log(r.data)
      setOptWare(r.data)
    })
  }, []);


  // 加載出庫數據
  useEffect(() => {
    const params = {
      recept_code: item?.recept_code,
      io: 'out',
    }
    setLoading(true)
    store.queryStockIOByCode(params).then(r=>{
      setLoading(false)
      console.log(r.data)
      let _list = r.data.map(o=>({
        id:o.id, 
        key: `${o.id} ${o.part_id} ${o.part_code} ${o.part_name}`,
        num: o.stock_num, 
        val: o.io_num,
        state:o.state,
      }))
      console.log(_list,'_list')
      setList(_list)
    })
  }, []);

  // 加載出庫數據
  useEffect(() => {
    if (method==='update') {
      const params = { ware_id:item?.out_ware_id  }
      setLoading(true)
      store.queryStockByWare(params).then(r=>{
        setLoading(false)

        // 沒有數據提示
        if (r.data.length === 0 ) {
          message.info(MSG.NO_PART_IN_WARE)
          return
        }
       
        // 設置庫存列表
        let part = r.data.map(o=> partFormat(o,method))
        setPart(r.data)
        setPartFil(part)
      })
    }
  }, []);

  // 選擇倉庫查詢庫存
  const doSelInWare =(e)=>{
    

      setInWare(e)
    
  }


  // 選擇倉庫查詢庫存
  const doSelOutWare =(e)=>{
    const params = { ware_id: e[1] }
    setLoading(true)
    store.queryStockByWare(params).then(r=>{
      setLoading(false)

      // 沒有數據提示
      if (r.data.length === 0 ) {
        message.info(MSG.NO_PART_IN_WARE)
        return
      }
      console.log(r.data)

      // 清空原來出庫數據
      setList([])

      // 設置庫存列表
      let part = r.data.map(o=> partFormat(o,method))
      setPart(r.data)
      setPartFil(part)

      // 設置出庫倉庫
      setOutWare(e)
    })
  }




  // 添加json數據
  const doAddItem =()=>{
    list.push({key:'',val:''})
    setList([...list])
    const _part = part.map(o=> partFormat(o,method))
    setPartFil(_part)

    // console.log(_part)
    console.log(part)
  }

  // 刪除json數據
  const doDelItem=(id)=>{
    list.splice(id,1)
    setList([...list])
  }

  // 修改數量
  const chgVal =(e,i)=>{
    // const val = parseInt(e.currentTarget.value)
    const val = e
    // console.log(val, )
    if (val> list[i].num) {
      message.info(MSG.OVER_STOCK)
    }else{
      list[i].val= val
      setList([...list])
    }
  }

  // 選擇零件
  const doSelPart = (val,i) => {
    const part_id = parseInt(val.split(' ')[1])
    const selPart = part.find(o => o.part_id === part_id);
    // console.log(part_id)
    // console.log(part)
    // console.log(selPart)

    if (selPart!== undefined) {
      const filtered = list.filter(o=> o.id === part_id)

      // console.log(filtered,'filtered')
      if (filtered.length > 0) {
        message.info(MSG.CHOOSED)
        return
      }

      list[i].id = part_id
      list[i].key= val 
      list[i].num= selPart.num
      list[i].val= 0
      setList([...list])
    }
  }


  const doSearch = (value) => {
    const filteredData = part.filter(o => 
     o.code.toLowerCase().includes(value.toLowerCase()) || o.name.toLowerCase().includes(value.toLowerCase())
    )
    setPartFil(filteredData.map(o=> partFormat(o,method)))
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
      out_dep_id: outWare[0],
      out_ware_id: outWare[1],
      in_dep_id: inWare[0],
      in_ware_id: inWare[1],
    }




    if (type === null) {
      message.info(MSG.CHOOSE_OUT_MSG)
      return
    }
    if ((outWare[0] === null)||(outWare[1] === null)) {
      message.info(MSG.CHOOSE_WARE)
      return
    }
    if (list.length === 0) {
      message.info(MSG.CHOOSE_PART)
      return 
    }
    // console.log(params)

    setLoading(true)
    store.saveStockIO(params).then(r=>{
      setLoading(false)
      setShowOutForm(false)
      setRefresh(true)
      message.info(MSG.SAV_SUC)
    })
  }





  return (
    <div className={s.form}>
      <div className={s.wrap}>
          <div className={s.tl}>{move?TXT.STOCK_IO_TYPE.MOVE:TXT.STOCK_OUT_INFO}</div>
          <div className={s.basic}>
            <div className={s.head}>
              <h1>{TXT.BAS_INFO}</h1>
            </div>

            {!move && 
            <div className={s.row}>
              <span>{TXT.STOCK_OUT_TYPE}</span>
              <Select options={optType} className={s.select} onChange={(e)=>setType(e)} value={type} disabled={detail}/>
              <span>{TXT.STOCK_OUT_WARE}</span>
              <Cascader options={optWare} className={s.select} onChange={doSelOutWare} value={outWare} disabled={detail}/>
            </div>}

            {move && 
            <div className={s.row}>
              <span>{TXT.STOCK_OUT_WARE}</span>
              <Cascader options={optWare} className={s.select} onChange={doSelOutWare} value={outWare} disabled={detail}/>
              <span>{TXT.STOCK_IN_WARE}</span>
              <Cascader options={optWare} className={s.select} onChange={doSelInWare} value={inWare} disabled={detail}/>
            </div>}
          </div>

          <div className={s.head}>
            <h1>{TXT.STOCK_OUT_PART}</h1>
            {part.length >0 &&  <Button icon={<PlusOutlined />} onClick={()=>doAddItem()} disabled={detail} />}
          </div>

          {list.length>0 &&
          <div className={s.info}>  
            <div className={s.th}>
              <span>{TXT.PART_INFO}</span>
              <span>{TXT.STOCK_IN_NUM}</span>
              <span>{TXT.STOCK_OUT_NUM}</span>
              <span>{FN.ACT}</span>
            </div>
            {list.map((o,i)=>
              <div key={i} className={s.row}>
                <i><Tag>{ST_TXT[o.state]}</Tag></i>
                <AutoComplete 
                  options={partFil} 
                  value={o.key} 
                  onSearch={doSearch} 
                  onSelect={(val)=>doSelPart(val,i)} 
                  style={{'width':'500px'}} 
                  disabled={detail}
                  />
                <span className={s.num}>{list[i].num}</span>
                <InputNumber 
                    onChange={(e)=>chgVal(e,i)} 
                    value={o.val} 
                    disabled={detail}
                    min={1} 
                    style={{flex:1,marginRight:'10px'}}
                    />
                <Button icon={<DeleteOutlined />} onClick={()=>doDelItem(i)} disabled={detail} />
              </div>
            )}
          </div>}

          <div className={s.fun}>

            <Button type="default" style={{width:'120px'}} onClick={()=>setShowOutForm(false)} >{FN.CLS}</Button> 

            {!detail && <Button type="primary" style={{width:'120px'}} onClick={()=>doSave()} >{FN.SAV}</Button>} 
          </div>
      </div>

    </div>
    
  )

}

export default  observer(FormMain)