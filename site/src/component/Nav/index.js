import React, { useEffect,useState } from 'react';
import { Outlet } from 'react-router-dom'
import { useNavigate } from 'react-router-dom'
import { inject,observer,MobXProviderContext } from 'mobx-react'
import {Menu} from 'antd'
import { AppstoreOutlined, MailOutlined, SettingOutlined } from '@ant-design/icons';
import s from './index.module.less';
import useVariant from 'antd/es/form/hooks/useVariants';

import {jp} from '@/constant/lang'
const {NAV,DB} = jp

const getItem =(label, key, icon, children, type)=> {
  return {
    key,
    icon,
    children,
    label,
    type,
  };
}


const DEP=getItem(NAV.MENU_L1_1, 'dep')
const SITE=getItem(NAV.MENU_L1_2, 'site')
const USER=getItem(NAV.MENU_L1_3, 'user') 
const PART=getItem(NAV.MENU_L1_4, 'part') 
const MODEL=getItem(NAV.MENU_L1_5, 'model')
const SUPPLY=getItem(NAV.MENU_L1_6, 'supply')
const WARE=getItem(NAV.MENU_L1_7, 'ware')

const STOCK=getItem(NAV.MENU_L2_1, 'stock')
const STOCKIO=getItem(NAV.MENU_L2_2, 'stockio')
const AUDIT=getItem(NAV.MENU_L2_3, 'audit')

const L1_NAV=getItem(NAV.MENU_L1, '1', <MailOutlined />, [])
const L2_NAV=getItem(NAV.MENU_L2, '2', <AppstoreOutlined />, [])




const Nav = () => {  
  const navigate = useNavigate();
  const { store } = React.useContext(MobXProviderContext)
  const rootSubmenuKeys = ['1', '2'];
  const [openKeys, setOpenKeys] = useState(['1','2']);
  const [items, setItems] = useState([]);

  useEffect(() => {    
    if(store.hasRole(DB.ROLE.SYS)){
      //システム管理
      L1_NAV.children=[DEP,SITE,USER,PART,MODEL,SUPPLY,WARE]
      L2_NAV.children=[STOCK,STOCKIO,AUDIT]
      setItems([L1_NAV,L2_NAV])    
    }
    else if(store.hasRole(DB.ROLE.PURCHASE)){
      //仕入
      L2_NAV.children=[STOCK,STOCKIO]
      setItems([L2_NAV])
    }
    else if(store.hasRole(DB.ROLE.REVIEW)){
      //レビュー
      L2_NAV.children=[STOCK,AUDIT]
      setItems([L2_NAV])
    }
  },[])
  
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
