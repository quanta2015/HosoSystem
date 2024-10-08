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
// ---------------  部品模塊API ----------------- //
///////////////////////////////////////////////////

  // 查詢表
  async queryPartSel(params) {
    return await this.post(urls.API_QUERY_PART_SEL, params)
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


  // 導出excel
  async importPart(params) {
    return await this.post(urls.API_IMPORT_PART, params)
  }




///////////////////////////////////////////////////
// -----------------  總類API ------------------ //
///////////////////////////////////////////////////

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


///////////////////////////////////////////////////
// -----------------  供應商API ----------------- //
///////////////////////////////////////////////////

  // 查詢供應商
  async querySupply(params) {
    return await this.post(urls.API_QUERY_SUPPLY, params)
  }
  // 刪除供應商
  async delSupply(params) {
    return await this.post(urls.API_DEL_SUPPLY, params)
  }
  // 保存供應商
  async saveSupply(params) {
    return await this.post(urls.API_SAVE_SUPPLY, params)
  }


///////////////////////////////////////////////////
// ------------------  倉庫API ----------------- //
///////////////////////////////////////////////////

  // 查詢倉庫
  async queryWare(params) {
    return await this.post(urls.API_QUERY_WARE, params)
  }
  // 刪除倉庫
  async delWare(params) {
    return await this.post(urls.API_DEL_WARE, params)
  }
  // 保存倉庫
  async saveWare(params) {
    return await this.post(urls.API_SAVE_WARE, params)
  }



///////////////////////////////////////////////////
// ------------------  庫存API ----------------- //
///////////////////////////////////////////////////

  // 查詢庫存
  async queryStock(params) {
    return await this.post(urls.API_QUERY_STOCK, params)
  }
  // 盤點庫存
  async checkStock(params) {
    return await this.post(urls.API_CHECK_STOCK, params)
  }

  // 盤點庫存(id)
  async checkStockById(params) {
    return await this.post(urls.API_CHECK_STOCK_BY_ID, params)
  }
  
  // 保存庫存
  async saveStock(params) {
    return await this.post(urls.API_SAVE_STOCK, params)
  }

  // 查詢某個倉庫的庫存
  async queryStockByWare(params) {
    return await this.post(urls.API_QUERY_STOCK_BY_WARE, params)
  }

  // 导出庫存
  async exportStock(params) {
    return await this.post(urls.API_EXPORT_STOCK, params)
  }





///////////////////////////////////////////////////
// ------------------  出入庫API ----------------- //
///////////////////////////////////////////////////

  // 查詢出入庫
  async queryStockIO(params) {
    return await this.post(urls.API_QUERY_STOCK_IO, params)
  }
  // 刪除出入庫
  async delStockIO(params) {
    return await this.post(urls.API_DEL_STOCK_IO, params)
  }
  // 保存出入庫
  async saveStockIO(params) {
    return await this.post(urls.API_SAVE_STOCK_IO, params)
  }

  // 查詢倉庫級聯
  async queryWareCas(params) {
    return await this.post(urls.API_QUERY_WARE_CAS, params)
  }

  // 查詢倉庫級聯
  async queryStockIOByCode(params) {
    return await this.post(urls.API_QUERY_STOCK_IO_BY_CODE, params)
  }



  // 审核出入库
  async auditStockIO(params) {
    return await this.post(urls.API_AUDIT_STOCK_IO, params)
  }





///////////////////////////////////////////////////
// ------------------  用戶API ----------------- //
///////////////////////////////////////////////////

  // 查詢用戶
  async queryUsr(params) {
    return await this.post(urls.API_QUERY_USER, params)
  }
  // 刪除用戶
  async delUsr(params) {
    return await this.post(urls.API_DEL_USER, params)
  }
  // 保存用戶
  async saveUsr(params) {
    return await this.post(urls.API_SAVE_USER, params)
  }




///////////////////////////////////////////////////
// ------------------  營業所API ----------------- //
///////////////////////////////////////////////////

  // 查詢營業所
  async queryDep(params) {
    return await this.post(urls.API_QUERY_DEP, params)
  }
  // 刪除營業所
  async delDep(params) {
    return await this.post(urls.API_DEL_DEP, params)
  }
  // 保存營業所
  async saveDep(params) {
    return await this.post(urls.API_SAVE_DEP, params)
  }


///////////////////////////////////////////////////
// ------------------  現場API ----------------- //
///////////////////////////////////////////////////

  // 查詢現場
  async querySite(params) {
    return await this.post(urls.API_QUERY_SITE, params)
  }
  // 刪除現場
  async delSite(params) {
    return await this.post(urls.API_DEL_SITE, params)
  }
  // 保存現場
  async saveSite(params) {
    return await this.post(urls.API_SAVE_SITE, params)
  }

}

export default new Store()