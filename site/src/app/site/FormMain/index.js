/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Input,  Space,  Form, Button, Row, Col, Select, Upload, Modal, message} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,CloudUploadOutlined, DeleteOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import s from './index.module.less';
import {jp} from '@constant/lang'


const { FN,MSG,DB,TXT } = jp

const formItemLayout = {
  labelCol: {
    md: { span: 6 },
  },
  wrapperCol: {
    md: { span: 6 },
  },
};



const FormMain = ({col, item, detail, method,setRefresh, setShowForm,setLoading}) => {
  const { store } = React.useContext(MobXProviderContext)


  const initBasic = method==='insert'?{}:{...item}
  const initJson = method==='insert'?[]:item.info
  const [info, setInfo] = useState(initJson);
  const [optDep, setOptDep] = useState([]);

  // 加載數據
  useEffect(() => {
    setLoading(true)
    store.queryDep().then(r=>{
      let dep = r.data.map(o=>({value:o.id, label:o.name}))
      setOptDep(dep)
      setLoading(false)
    })
  }, []);

  // 保存修改數據
  const onFinish = (values) => {
    
    values.info = JSON.stringify(info)
    const params = {
      id: item?.id,
      method,
      ...values
    }

    console.log(values)

    setLoading(true)
    store.saveSite(params).then(r=>{
      setLoading(false)
      setShowForm(false)
      setRefresh(true)
      message.info(MSG.SAV_SUC)
    })
  };

  // 添加json數據
  const doAddItem =()=>{
    info.push({key:'',val:''})
    setInfo([...info])
  }

  // 刪除json數據
  const doDelItem=(id)=>{
    info.splice(id,1)
    setInfo([...info])
  }

  // 修改數據
  const chgVal =(id,e,key)=>{
    const val = e.currentTarget.value
    info[id][key]= val
    setInfo([...info])
  }


  return (
    <div className={s.form}>
      <div className={s.wrap}>
        <Form 
          {...formItemLayout}
          initialValues={initBasic}
          onFinish={onFinish}
          >

          <div className={s.basic}>
            <div className={s.head}>
              <h1>{TXT.BAS_INFO}</h1>
            </div>

            <Form.Item
              name="dep_id"
              label={DB.SITE.DEP_NAME}
              labelCol={{ span: 2 }}
              wrapperCol={{ span: 22 }}
            >
              <Select options={optDep}  disabled={detail}/> 
            </Form.Item>

            <Row gutter={16}>
              <Col span={8}>
                <Form.Item
                  name="name"
                  label={DB.SITE.NAME}
                  labelCol={{ span: 6 }}
                  wrapperCol={{ span: 18 }}
                >
                  <Input disabled={detail}/>
                </Form.Item>
              </Col>
              <Col span={16}>
                <Form.Item
                  name="manager"
                  label={DB.SITE.MANAGER}
                  labelCol={{ span: 4 }}
                  wrapperCol={{ span: 20 }}
                >
                  <Input disabled={detail}/>
                </Form.Item>
              </Col>
            </Row>

            <Row gutter={16}>
              <Col span={8}>
                <Form.Item
                  name="phone"
                  label={DB.SITE.PHONE}
                  labelCol={{ span: 6 }}
                  wrapperCol={{ span: 18 }}
                >
                  <Input disabled={detail}/>
                </Form.Item>
              </Col>
              <Col span={16}>
                <Form.Item
                  name="addr"
                  label={DB.SITE.ADDR}
                  labelCol={{ span: 4 }}
                  wrapperCol={{ span: 20 }}
                >
                  <Input disabled={detail}/>
                </Form.Item>
              </Col>
            </Row>

          </div>

          <div className={s.head}>
            <h1>{TXT.OTH_INFO}</h1>
            {!detail && <Button icon={<PlusOutlined />} onClick={()=>doAddItem()} />}
          </div>     
          
          <div className={s.info}>
            {info.map((o,i)=>
                <div key={i} className={s.row}>
                  <Input value={o.key} onChange={(e)=>chgVal(i,e,'key')} disabled={detail}/>
                  <Input value={o.val} onChange={(e)=>chgVal(i,e,'val')} disabled={detail}/>
                  {!detail && <Button icon={<DeleteOutlined />} onClick={()=>doDelItem(i)} />}
                </div>
              )}
          </div>

          <div className={s.fun}>

            <Button type="default" style={{width:'120px'}} onClick={()=>setShowForm(false)} >{detail?FN.DIS:FN.CLS}</Button>  

            {!detail && <Button type="primary" htmlType="submit" style={{width:'120px'}} >{FN.SAV}</Button> }
          </div>
        </Form>
      </div>

    </div>
    
  )

}

export default  observer(FormMain)