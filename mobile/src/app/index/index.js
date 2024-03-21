import React,{useEffect,useRef,useState} from 'react'
import { inject, observer, MobXProviderContext } from 'mobx-react'
import { Form, Input, Button, message } from 'antd'
import { UserOutlined, LockOutlined,ScanOutlined } from '@ant-design/icons';
import * as urls from '@/constant/urls'
import {loadLocalUser} from '@/util/token'
import { useNavigate } from 'react-router-dom'
import icon_scna from '@/img/icon-scan.svg'
import s from './index.module.less'


import * as ZXing from '@zxing/library';

import FormCheck from './FormCheck'
import FormMain from './FormMain'

const Nav = () => {
  const { store } = React.useContext(MobXProviderContext);
  const navigate = useNavigate();
  const videoRef = useRef(null);
  const [loading, setLoading] = useState(false);
  const [ds,setDs] = useState([])
  const [showForm,setShowForm] = useState(false)
  const [showCheck,setShowCheck] = useState(false)


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

          console.log(reader,devices[0].deviceId,'reader')
          setCodeReader(reader);
          setSelectedDeviceId(devices[0].deviceId);

          
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
    if (codeReader  && videoRef.current) {
      codeReader.decodeFromInputVideoDevice(selectedDeviceId, 'video')
      .then(result => {
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
    }
  };

  const decodeContinuously = () => {
    if (codeReader  && videoRef.current) {
      codeReader.decodeFromInputVideoDeviceContinuously(selectedDeviceId, 'video', (result, err) => {
        if (result) {
          setQRCodeText(result.text);
          console.log('Found QR code!', result);
        }

        if (err instanceof ZXing.NotFoundException) {
          console.log('No QR code found.');
        }

        if (err instanceof ZXing.ChecksumException) {
          console.log('A code was found, but its read value was not valid.');
        }

        if (err instanceof ZXing.FormatException) {
          console.log('A code was found, but it was in an invalid format.');
        }
      });
    }
  };


  const doScan =()=>{
    decodeOnce();
  }


  const doCheckWare =()=>{
    setShowCheck(true)
  }


  return (
    <div className={s.index}>
      <div className={s.bd}>
        
        <div className={s.scan} onClick={doScan}>
          <img src={icon_scna} alt="" />
            
          
          <video  ref={videoRef} id="video" autoPlay></video>
          
        </div>
      </div>
      <div className={s.ft}>
        
        <Button type="primary" block style={{height: '45px'}} onClick={doCheckWare}>库存盘点</Button>
      </div>

      {showForm && <FormMain {...{ds, setShowForm, setLoading, setShowScan }}  />}

      {showCheck && <FormCheck {...{ds, setShowCheck, setLoading, setShowScan }}  />}
      
    </div>
  )

}

export default observer(Nav)