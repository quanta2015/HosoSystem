/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import { AutoComplete } from 'antd';
import {Input,  Space,  Form, Button, Row, Col, Select, Empty,  Tag, Cascader, Modal, message, InputNumber} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,ExclamationCircleFilled,LeftOutlined, SearchOutlined,CameraOutlined,CloudUploadOutlined, DeleteOutlined, CloseOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import {loadLocalUser} from '@/util/token'
import s from './index.module.less';
import {jp} from '@constant/lang'
import {ST_TXT,ST} from '@/constant/data'
import icon_qrcode from '@/img/qrcode.svg'
import icon_scan from '@/img/icon-scan.svg'
import * as ZXing from '@zxing/library';


const { confirm } = Modal;
const { FN,MSG,DB,TXT,MOBILE } = jp
const { TextArea } = Input

const code = (o)=> (`# ${o.id} ${o.code} ${o.name}`)
const partFormat =(o,method,id)=> ({label: code(o), value:code(o)})
const getPart = (list,id, stockio_id)=> {
  let r = (list.filter(o=> o.id === id))[0]
  return `${stockio_id} ${r.id} ${r.code} ${r.name}`
}



const FormCheck = ({setShowCheck,setLoading}) => {
  const { store } = React.useContext(MobXProviderContext)

  const [ds,setDs] = useState([])
  const [optWare, setOptWare] = useState([]);
  const [wareId, setWareId] = useState(null);
  const [showScan, setShowScan] = useState(false)
  const [codeReader, setCodeReader] = useState(null);
  const [selectedDeviceId, setSelectedDeviceId] = useState('');
  const [code, setCode] = useState(null)
  const [reader, setReader] = useState(null);


  useEffect(() => {
    const { usr } = loadLocalUser()    
    const params = {
      dep_id: usr.dep_id,
    }
    setLoading(true)
    store.queryWareByDep(params).then(r=>{
      setLoading(false)
      const ret = r.data.map(o=> ({label:o.name, value:o.id}))
      setOptWare(ret)
    })
  }, []);




  const showConfirm = (e,i) => {
    confirm({
      title: MSG.WARE_CFM,
      icon: <ExclamationCircleFilled />,
      okType: 'danger',
      okText: FN.OK,
      cancelText: FN.NO,
      onOk() {
        doSave(e,i)
      },
    });
  };


  const doChgNum=(e,i)=>{
    ds[i].num_real = e
    setDs([...ds])
  }


  const doSave =(e,i)=>{
    
    const params = {
      id: e.id,
      num: e.num_real,
      ware_id: wareId,
    }
    setLoading(true)
    store.saveStockNum(params).then(r=>{
      setLoading(false)
      r.data.map(o=> o.num_real = o.num)
      setDs(r.data)
      message.info(MSG.SAVE_SUC)
    })
  }

  const doClose =()=>{
    setShowCheck(false)
  }


  const doSelWare =(e)=>{
    setWareId(e)
    setDs([])

    let params = {
      ware_id: e
    }
    store.queryStockByWare(params).then(r=>{
      setLoading(false)
      if (r.data.length === 0 ) {
        message.info(MSG.NO_PART_IN_WARE)
        return
      }
      r.data.map(o=> o.num_real = o.num)
      setDs(r.data)
    })
  }



  const doQrcode = async (e) => {
    setShowScan(true)

    try {
      const reader = new ZXing.BrowserQRCodeReader();
      setReader(reader)
     
      reader.decodeFromInputVideoDevice(selectedDeviceId, 'videoscan')
        .then(result => {
          if (result.text === e.code) {
            message.info('success')
          }else{
            message.error('failed')
          }
          reader.reset();
          setShowScan(false)
        })
        .catch(error => console.error(error));
    } catch (error) {
      console.error(error);
    }
  };

  const doCloseScan =()=>{
    if (reader) {
      reader.reset();
    }
    setShowScan(false)
  }


  

  return (
    <div className={s.form}>
      <div className={s.wrap}>
        <div className={s.hd}>
          <div className={s.close} onClick={doClose}><LeftOutlined /></div>
          <Select 
            options={optWare} 
            className={s.select} 
            onChange={doSelWare} 
            value={wareId} 
            />
        </div>

        

        {ds.map((o,i)=>
          <div className={s.item} key={i}>
            <div className={s.itemwarp}>
              <div className={s.info}>
                <div className={s.camera} onClick={()=>doQrcode(o)}>
                  <img src={icon_qrcode} alt="" />
                </div>
                <div className={s.row}>
                  <label>{DB.PART.CODE}</label>
                  <span>{o.code}</span>
                </div>
                <div className={s.row}>
                  <label>{DB.PART.NAME}</label>
                  <span>{o.name}</span>
                </div>
                <div className={s.row_wrap}>
                  <div className={s.row}>
                    <label>{MOBILE.STOCK_NUM}</label>
                    <span>{o.num}</span>
                  </div>

                  <div className={s.row}>
                    <label>{MOBILE.REAL_NUM}</label>
                    <InputNumber value={o.num_real} onChange={(e)=>doChgNum(e,i)} max={o.num} min={o.min} />
                  </div>
                </div>

              </div>
            </div>

            {o.status === 1 && 
            <div className={s.fun}>
              <Button type="primary" size="large" onClick={()=>showConfirm(o,i)} block>{FN.SAV}</Button>
            </div>}
          </div>
          )}

        {ds.length===0 && <div className={s.emptyWarp}><Empty /></div>}

      </div>


      {showScan && 
      <div className={s.scan}>
        <div className={s.wrap} onClick={doCloseScan}>
          <img src={icon_scan} alt="" />
          <video  id="videoscan" autoPlay ></video>
        </div>
      </div>}

    </div>
    
  )

}

export default  observer(FormCheck)