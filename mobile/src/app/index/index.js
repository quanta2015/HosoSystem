import React,{useEffect,useRef,useState} from 'react'
import { inject, observer, MobXProviderContext } from 'mobx-react'
import { Form, Input, Button, message } from 'antd'
import { UserOutlined, LockOutlined,ScanOutlined } from '@ant-design/icons';
import * as urls from '@/constant/urls'
import {loadLocalUser} from '@/util/token'
import { useNavigate } from 'react-router-dom'
import icon_scan from '@/img/icon-scan.svg'
import s from './index.module.less'


import * as ZXing from '@zxing/library';

import FormCheck from './FormCheck'
import FormMain from './FormMain'

import {jp} from '@constant/lang'
const {FN} = jp

const Nav = () => {
  const { store } = React.useContext(MobXProviderContext);
  const navigate = useNavigate();
  const videoRef = useRef(null);
  const [loading, setLoading] = useState(false);
  const [ds,setDs] = useState([])
  const [showForm,setShowForm] = useState(false)
  const [showCheck,setShowCheck] = useState(false)
  const [curCam,setCurCam] = useState(0);
  const [selectedDeviceId, setSelectedDeviceId] = useState('');
  const [codeReader, setCodeReader] = useState(null);
  const [qrCodeText, setQRCodeText] = useState('');
  const [showScan, setShowScan] = useState(false)

  useEffect(() => {
    const initCodeReader = async () => {
      try {
        const reader = new ZXing.BrowserQRCodeReader();
        const devices = await reader.getVideoInputDevices();
        
        if (devices.length > 0) {
          // console.log(reader,devices[0].deviceId,'reader')
          setCodeReader(reader);        
          setCurCam(0)
          setSelectedDeviceId(devices[curCam].deviceId);
        }
      } catch (error) {
        console.error(error);
      }
    };
    initCodeReader();

    return () => {
      if (codeReader) {
        codeReader.reset();
      }
    };
  }, []);


  const decodeOnce = () => {   
    codeReader.decodeFromInputVideoDevice(selectedDeviceId, 'video')
    .then(result => {
      console.log(result)
      let recept_code = result.text
      setQRCodeText(recept_code)

      let params ={
        recept_code,
      }
      setLoading(true)
      store.getStockIOByRC(params).then(r=>{
        // console.log(r.data)
        setLoading(false)

        r.data.map(o=>{ o.num_real = o.num })
        setDs(r.data)
        setShowForm(true)
        setShowScan(false)
      })
    })
    .catch(error => console.error(error));
  };

  const doScan =()=>{
    decodeOnce();
  }


  const doCheckWare =()=>{
    setShowCheck(true)
    if (codeReader) {
      codeReader.reset();
    }
  }

  const changeCam = async()=>{
    const devices = await codeReader.getVideoInputDevices();
    setCurCam( (curCam+1)%devices.length )    
    setSelectedDeviceId(devices[curCam].deviceId)
    console.log(`${curCam} / ${devices.length} : ${selectedDeviceId}`)
    decodeOnce()
  }


  return (
    <div className={s.index}>
      <div className={s.bd}>
        <div className={s.scan} onClick={doScan}>
          <img src={icon_scan} alt="" />
          <video  ref={videoRef} id="video" autoPlay></video>
        </div>
      </div>
      <div className={s.ft}>
        <Button type="primary" block style={{height: '45px', marginBottom:'1rem'}} onClick={changeCam}>{FN.CHG_CAM}</Button>
        <Button type="primary" block style={{height: '45px'}} onClick={doCheckWare}>{FN.STK}</Button>
      </div>
      {showForm && <FormMain {...{ds, setShowForm, setLoading, setShowScan }}  />}
      {showCheck && <FormCheck {...{ds, setShowCheck, setLoading, setShowScan }}  />}      
    </div>
  )

}

export default observer(Nav)