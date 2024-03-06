import React,{useEffect,useState,useRef} from 'react';
import { Outlet } from 'react-router-dom'
import { inject,observer,MobXProviderContext } from 'mobx-react'
import { useNavigate } from 'react-router-dom'
import { loadLocalUser } from '@/util/token'

import Menu from '@/component/Menu'
import Nav from '@/component/Nav'


import s from './index.module.less';
import logo from '@/img/logo.svg'



const Layout = () => {
  const navigate = useNavigate();
  const { store } = React.useContext(MobXProviderContext)

  const userAgent = navigator.userAgent.toLowerCase();
  const mobileDevices = ['android', 'iphone', 'ipad', 'ipod', 'windows phone'];
  const isMobileDevice = mobileDevices.some(device => userAgent.includes(device));
  const isSmallScreen = window.innerWidth < 768;
	store.mobile = isMobileDevice || isSmallScreen


  useEffect(() => {

    let localUser = loadLocalUser()
    if (!window.token) {
      navigate("/login");
    } 
  }, []);


  return (
    <>
      <Menu />
      <div className={s.main}>
        <Nav />
        <Outlet />
      </div>
    </>
  )
 
}

export default inject('store')(observer(Layout))
