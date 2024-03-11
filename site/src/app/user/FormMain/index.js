/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Input,  Space,  Form, Button, Row, Col, Select, Upload, Modal, message} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,CloudUploadOutlined, DeleteOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import s from './index.module.less';


const formItemLayout = {
  labelCol: {
    md: { span: 6 },
  },
  wrapperCol: {
    md: { span: 6 },
  },
};

// const ROLE =[{id:1,name:'系統'},{id:2,name:'倉庫'},{id:3,name:'採購'},{id:4,name:'審核'}]
const ROLE =['系統','倉庫','採購','審核']


const initOpt =(list)=> list.map(o=>({value:o, label:o}))

const FormMain = ({col, item, method,setRefresh, setShowForm,setLoading}) => {
  const { store } = React.useContext(MobXProviderContext)


  const initBasic = method==='insert'?{}:{...item}
  const [optDep, setOptDep] = useState([]);
  const [optRole, setOptRole] = useState(initOpt(ROLE));

  // 加載數據
  useEffect(() => {
    setLoading(true)
    store.queryDep().then(r=>{
      let dep = r.data.map(o=>({value:o.id, label:o.name}))
      setOptDep(dep)
      setLoading(false)
    })
  }, []);


  console.log(optDep)

  // 保存修改數據
  const onFinish = (values) => {
    


    const params = {
      id: item?.id,
      method,
      ...values
    }
    


    setLoading(true)
    store.saveUsr(params).then(r=>{
      setLoading(false)
      setShowForm(false)
      setRefresh(true)
      message.info('保存成功')
    })
  };


  console.log(optDep)

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
              <h1>基本信息</h1>
            </div>

            <Form.Item
              name="dep_id"
              label="所屬營業所"
              labelCol={{ span: 2 }}
              wrapperCol={{ span: 22 }}
            >
              <Select options={optDep}/>
            </Form.Item>

            <Row gutter={16}>
              <Col span={8}>
                <Form.Item
                  name="usr"
                  label="用戶賬號"
                  labelCol={{ span: 6 }}
                  wrapperCol={{ span: 18 }}
                >
                  <Input />
                </Form.Item>
              </Col>
              <Col span={16}>
                <Form.Item
                  name="name"
                  label="用戶名"
                  labelCol={{ span: 4 }}
                  wrapperCol={{ span: 20 }}
                >
                  <Input />
                </Form.Item>
              </Col>
            </Row>

            <Row gutter={16}>
              <Col span={8}>
                <Form.Item
                  name="pwd"
                  label="密碼"
                  labelCol={{ span: 6 }}
                  wrapperCol={{ span: 18 }}
                >
                  <Input />
                </Form.Item>
              </Col>
              <Col span={16}>
                <Form.Item
                  name="role"
                  label="角色"
                  labelCol={{ span: 4 }}
                  wrapperCol={{ span: 20 }}
                >
                  <Select options={optRole} />
                </Form.Item>
              </Col>
              
            </Row>
            
          </div>



          <div className={s.fun}>
            <Button type="default" style={{width:'120px'}} onClick={()=>setShowForm(false)} >取消</Button>  
            <Button type="primary" htmlType="submit" style={{width:'120px'}} >保存</Button>
          </div>
        </Form>
      </div>

    </div>
    
  )

}

export default  observer(FormMain)