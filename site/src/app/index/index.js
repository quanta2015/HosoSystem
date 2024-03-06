import React,{useEffect} from 'react'
import { inject, observer, MobXProviderContext } from 'mobx-react'
import { Form, Input, Button, message } from 'antd'
import { UserOutlined, LockOutlined } from '@ant-design/icons';
import * as urls from '@/constant/urls'
import {loadUser} from '@/util/token'
import { useNavigate } from 'react-router-dom'

import s from './index.module.less'

import n01 from '@/img/n01.png'
import n02 from '@/img/n02.png'
import n03 from '@/img/n03.png'

const Nav = () => {
  const { store } = React.useContext(MobXProviderContext);
  const navigate = useNavigate();

  useEffect(() => {
    // console.log(store.user,'user')

    let user = loadUser()
    if (!user) {
      navigate('/login')
      store.saveUser(user)
    }
  }, []);



  return (
    <div className={s.nav}>
      <div className={s.wrap}>

       
      </div>

      
    </div>
  )

}

export default observer(Nav)