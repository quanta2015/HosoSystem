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


  // 查詢表
  async queryTable(params) {
    return await this.post(urls.API_QUERY_TABLE, params)
  }

  // 根據id刪除記錄
  async delById(params) {
    return await this.post(urls.API_DEL_BY_ID, params)
  }

  // 查詢選擇數據
  async querySelInfo(params) {
    return await this.post(urls.API_QRY_SEL_INFO, params)
  }

  // 保存零件數據
  async savePart(params) {
    return await this.post(urls.API_SAVE_PART, params)
  }

  // 導出excel
  async exportPart(params) {
    return await this.post(urls.API_EXPORT_PART, params)
  }


  // 查詢總類
  async queryModel(params) {
    return await this.post(urls.API_QUERY_MODEL, params)
  }


  // 刪除總量
  async delModel(params) {
    return await this.post(urls.API_DEL_MODEL, params)
  }

  // 刪除總量
  async saveModel(params) {
    return await this.post(urls.API_SAVE_MODEL, params)
  }






}

export default new Store()