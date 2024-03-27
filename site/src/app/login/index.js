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

import {jp} from '@constant/lang'
const { SYS_NAME,TXT,FN } = jp



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
              <span>{SYS_NAME.JP}</span>
              <label>{SYS_NAME.EN}</label>
            </p>
          </div>
                 
          <Form form={form} className={style.login_frm}>
            <Form.Item name="usr" rules={[{ required: true, message: TXT.INPUT_USERNAME}]}>
              <Input size="large" style={{height: '45px'}} placeholder={TXT.INPUT_USERNAME} allowClear prefix={<UserOutlined />} />
            </Form.Item>
            <Form.Item name="pwd" rules={[{ required: true, message: TXT.INPUT_PASSWORD}]}>
              <Input.Password size="large" style={{height: '45px'}} placeholder={TXT.INPUT_PASSWORD} prefix={<LockOutlined />}/>
            </Form.Item>
            <p></p>
            <Form.Item>
              <Button type="primary" size="large" className="input-btn" block onClick={doLogin}>{FN.LOGIN}</Button>
            </Form.Item>
          </Form>

        </div>
      </div>

      
    </div>
  )

}

export default observer(Login)
