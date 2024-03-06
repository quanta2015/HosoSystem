import React from 'react'
import { inject,observer,MobXProviderContext } from 'mobx-react'
import { Form, Input, Button, message } from 'antd'
import {saveUser} from '@/util/token'
import { UserOutlined,LockOutlined } from '@ant-design/icons';
import * as urls from '@/constant/urls'
import { useNavigate } from 'react-router-dom'
import { saveLocalUser } from '@/util/token'

import style from './index.module.less'

import logo from '@/img/hoso.webp'
import bg from '@/img/bg1.png'


const Login = () => {
  const { store } = React.useContext(MobXProviderContext);
  const navigate = useNavigate();
  const [form] = Form.useForm();

  const doLogin =async()=>{
    try {
      const params = await form.validateFields();
      const r = await store.login(params)
      // console.log(r)
      
      message.info(r.msg)
      if (r.code===0) {
        saveLocalUser(r.data)
        store.saveUser(r.data)
        // saveLocalUser(r.data)
        // saveToken(r.token)
        window.token = r.token
        navigate('/')
      }
    } catch (errorInfo) {
      console.log('Failed:', errorInfo);
    }

    
  }

  return (
    <div className={style.login}>
      <div className={style.wrap}>
        

        <div className={style.logo}>
          <img src={bg} />
        </div>

        <div className={style.main}>
          <div className={style.title}>
            <img src={logo} className={style.bg} />
            <p>
              <span>IMS库存管理システム</span>
              <label>IMS Inventory Management System</label>
            </p>
          </div>
                 
          <Form form={form} className={style.login_frm}>
            <Form.Item name="usr" rules={[{ required: true, message: '请输入账号'}]}>
              <Input size="large" style={{height: '45px'}} placeholder="请输入账号" allowClear prefix={<UserOutlined />} />
            </Form.Item>
            <Form.Item name="pwd" rules={[{ required: true, message: '请输入账号'}]}>
              <Input.Password size="large" style={{height: '45px'}} placeholder="请输入密码" prefix={<LockOutlined />}/>
            </Form.Item>
            <p></p>
            <Form.Item>
              <Button type="primary" size="large" className="input-btn" block onClick={doLogin}>登 录</Button>
            </Form.Item>
          </Form>

        </div>
      </div>

      
    </div>
  )

}

export default observer(Login)
