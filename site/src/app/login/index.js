import React from 'react'
import { inject,observer,MobXProviderContext } from 'mobx-react'
import { Form, Input, Button, message } from 'antd'
import {saveUser} from '@/util/token'
import { UserOutlined,LockOutlined } from '@ant-design/icons';
import * as urls from '@/constant/urls'
import { useNavigate } from 'react-router-dom'
import { saveLocalUser,saveToken } from '@/util/token'

import style from './index.module.less'

import logo from '@/img/hoso.webp'



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
        saveLocalUser(r.data,r.token)
        store.saveUser(r.data)
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
          
        </div>

        <div className={style.main}>
          <div className={style.title}>
            <img src={logo} className={style.bg} />
            <p>
              <span>IMS倉庫管理システム</span>
              <label>IMS Inventory Management System</label>
            </p>
          </div>
                 
          <Form form={form} className={style.login_frm}>
            <Form.Item name="usr" rules={[{ required: true, message: 'ユーザー名を入力してください'}]}>
              <Input size="large" style={{height: '45px'}} placeholder="ユーザー名を入力してください" allowClear prefix={<UserOutlined />} />
            </Form.Item>
            <Form.Item name="pwd" rules={[{ required: true, message: 'パスワードを入力してください'}]}>
              <Input.Password size="large" style={{height: '45px'}} placeholder="パスワードを入力してください" prefix={<LockOutlined />}/>
            </Form.Item>
            <p></p>
            <Form.Item>
              <Button type="primary" size="large" className="input-btn" block onClick={doLogin}>ログイン</Button>
            </Form.Item>
          </Form>

        </div>
      </div>

      
    </div>
  )

}

export default observer(Login)
