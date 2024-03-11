import React, { lazy, Suspense } from 'react';
import { Routes, Route, HashRouter, BrowserRouter } from "react-router-dom";
import ReactDOM from 'react-dom/client';
import { Provider } from 'mobx-react'
import { configure } from 'mobx'
import { ConfigProvider } from 'antd'
import Loadable from '@/component/Loadable'
import zhCN from 'antd/es/locale/zh_CN'
import injects from '@/store'

import '@/less/var.less'
import '@/less/com.less'


configure({ enforceActions: 'observed' })


const Index = lazy(() => import('./app/index'));
const Layout = lazy(() => import('./app/layout'));
const Login = lazy(() => import('./app/login'));
const Part = lazy(() => import('./app/part'));
const Model = lazy(() => import('./app/model'));
const Supply = lazy(() => import('./app/supply'));
const Ware = lazy(() => import('./app/ware'));
const Dep = lazy(() => import('./app/dep'));

const Stock = lazy(() => import('./app/stock'));
const StockIO = lazy(() => import('./app/stockio'));


const User = lazy(() => import('./app/user'));

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <Provider {...injects}>
    <ConfigProvider locale={zhCN}>
      <HashRouter>
        <Suspense fallback={<div>Loading...</div>}>
          <Routes>
            <Route path="/login" element={<Login />} />
            <Route element={<Layout />}>
              <Route path="/" element={<Index />} />
              <Route path="/part" element={<Part />} />
              <Route path="/model" element={<Model />} />
              <Route path="/supply" element={<Supply />} />
              <Route path="/ware" element={<Ware />} />
              <Route path="/dep" element={<Dep />} />
              <Route path="/user" element={<User />} />

              <Route path="/stock" element={<Stock />} />
              <Route path="/stockio" element={<StockIO />} />

              

            </Route>
          </Routes>
        </Suspense>
      </HashRouter>
    </ConfigProvider>
  </Provider>
);