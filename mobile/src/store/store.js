import { makeAutoObservable } from 'mobx'
import { message } from 'antd'
import { get, post } from '@/util/net.js'
import * as urls from '@/constant/urls'


class Store {
  constructor() {
    makeAutoObservable(this);
  }

  user = null

  saveUser = (user) => {
    this.user = user
  }

  async post(url, params) {
    const r = await post(url, params)
    // console.log(r,'aaaa')
    if (r.code === 0) {
      return r
    } else {
      return null
      message.error(' 网络接口数据出错!')
    }
  }


  async get(url, params) {
    const r = await get(url, params)
    console.log(r)
    if (r.code === 0) {
      return r.data
    } else {
      return null
      message.error(' 网络接口数据出错!')
    }
  }


///////////////////////////////////////////////////
// ---------------  系統模塊API ----------------- //
///////////////////////////////////////////////////


  async login(params) {
    const r = await post(urls.API_LOGIN,params)
    if (r) {
      return r
    }else{
      return null
      message.error(' 网络接口数据出错!')
    }
  }

  // 上傳圖片
  async upload(params) {
    try {
      const r = await this.post(urls.API_UPLOAD, params);
      if ((r.status === 200) && (r.data.code === 0)) {
        return r.data.data.id
      }
      return r;
    } catch (error) {
      message.error('文件上传失败！')
      console.error('File upload error: ', error);
    }
  }



///////////////////////////////////////////////////
// ------------------  出入庫API ----------------- //
///////////////////////////////////////////////////



  async getStockIOByRC(params) {
    return await this.post(urls.API_QUERY_STOCK_IO_BY_RC, params)
  }


  async procStockIO(params) {
    return await this.post(urls.API_PROC_STOCK_IO, params)
  }


}

export default new Store()