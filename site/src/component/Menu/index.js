import React, { useState, useRef } from 'react';
import { inject, observer, MobXProviderContext } from 'mobx-react'
// import classnames from 'classnames';
// import {API_SERVER} from '@/constant/apis'
import s from './index.module.less';
import { useNavigate } from 'react-router-dom'
// import cls from 'classnames';
import {  LogoutOutlined } from '@ant-design/icons';
import { removeLocalUser } from '@/util/token'


import logo from '@/img/hoso.webp'
import sys from '@/img/system.svg'
import inst from '@/img/instgram.svg'
import list from '@/img/list.svg'
import map from '@/img/map.svg'
import user from '@/img/user.svg'
import logout from '@/img/logout.svg'


const Menu = () => {
  const { store } = React.useContext(MobXProviderContext);
    const menuRef = useRef(null);
    const navigate = useNavigate();

    const [show, setShow] = useState(false);

    const doLogout=()=>{
      store.saveUser(null)
      removeLocalUser();
      navigate('login')
    }

    return (
    <div className={s.menu}>
      <div className={s.logo} onClick={()=>navigate('/')}>
        <img src={logo} alt=""  />
      </div>
      
      <div className={s.btn} onClick={doLogout}>
        <LogoutOutlined style={{ fontSize: '24px', color: '#fff' }}  />
      </div>
    </div>
  )

}

export default inject('store')(observer(Menu))