import React, { useState } from 'react';
import { Outlet } from 'react-router-dom'
import { useNavigate } from 'react-router-dom'
import { inject,observer,MobXProviderContext } from 'mobx-react'
import {Menu} from 'antd'
import { AppstoreOutlined, MailOutlined, SettingOutlined } from '@ant-design/icons';

import s from './index.module.less';
import {jp} from '@/constant/lang'
const {NAV} = jp

const getItem =(label, key, icon, children, type)=> {
  return {
    key,
    icon,
    children,
    label,
    type,
  };
}


const items = [
  getItem(NAV.MENU_L1, '1', <MailOutlined />, [
    getItem(NAV.MENU_L1_1, 'dep'), 
    getItem(NAV.MENU_L1_2, 'site'), 
    getItem(NAV.MENU_L1_3, 'user'), 
    getItem(NAV.MENU_L1_4, 'part'), 
    getItem(NAV.MENU_L1_5, 'model'),
    getItem(NAV.MENU_L1_6, 'supply'),
    getItem(NAV.MENU_L1_7, 'ware'),
  ]),
  getItem(NAV.MENU_L2, '2', <AppstoreOutlined />, [
    getItem(NAV.MENU_L2_1, 'stock'),
    getItem(NAV.MENU_L2_2, 'stockio'),
    getItem(NAV.MENU_L2_3, 'audit'),
  ]),
]

const Nav = () => {
  const navigate = useNavigate();
  const { store } = React.useContext(MobXProviderContext)
  const rootSubmenuKeys = ['1', '2'];
  const [openKeys, setOpenKeys] = useState(['1','2']);
  

  // const onOpenChange = (keys) => {
  //   const latestOpenKey = keys.find((key) => openKeys.indexOf(key) === -1);
  //   if (latestOpenKey && rootSubmenuKeys.indexOf(latestOpenKey) === -1) {
  //     setOpenKeys(keys);
  //   } else {
  //     setOpenKeys(latestOpenKey ? [latestOpenKey] : []);
  //   }
  // };


  const onClick = ({ item, key, keyPath, domEvent }) => {
    navigate(key)
  };


  return (
    <div className={s.nav}>
      <Menu
        openKeys={openKeys}
        mode="inline"
        items={items}
        style={{height:'100%'}}
        defaultSelectedKeys={['/part']} 
        onClick={onClick}
        // onOpenChange={onOpenChange}
      />
    </div>
  )
 
}

export default inject('store')(observer(Nav))
