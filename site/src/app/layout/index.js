import React,{useEffect,useState,useRef} from 'react';
import { Outlet } from 'react-router-dom'
import { inject,observer,MobXProviderContext } from 'mobx-react'
import { loadLocalUser } from '@/util/token'
import { useLocation,useNavigate } from 'react-router-dom';

import Menu from '@/component/Menu'
import Nav from '@/component/Nav'


import s from './index.module.less';
import logo from '@/img/logo.svg'

import {jp} from '@/constant/lang'
const {DB} = jp



const Layout = () => {
  const navigate = useNavigate();
  const { store } = React.useContext(MobXProviderContext)

  const userAgent = navigator.userAgent.toLowerCase();
  const mobileDevices = ['android', 'iphone', 'ipad', 'ipod', 'windows phone'];
  const isMobileDevice = mobileDevices.some(device => userAgent.includes(device));
  const isSmallScreen = window.innerWidth < 768;
	store.mobile = isMobileDevice || isSmallScreen
  const location = useLocation();
  

  useEffect(() => {
    let {usr, token } = loadLocalUser()  
    if (!token) {
      navigate("/login");
    } else{      
      window.token = token      
    }
  }, [location]);


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
