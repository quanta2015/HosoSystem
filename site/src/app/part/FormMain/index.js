/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Input,  Space,  Form, Button, Row, Col, Select, Upload, Modal, message} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,CloudUploadOutlined, DeleteOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64,genQR} from '@/util/fn'
import s from './index.module.less';
import {jp} from '@constant/lang'


const { FN,MSG,DB,TXT } = jp

const formItemLayout = {
  labelCol: {
    md: { span: 6 },
  },
  wrapperCol: {
    md: { span: 6 },
  },
};


const toList=(obj)=> {
  return Object.entries(obj).map(([key, value]) => ({
    key: key,
    val: value,
  }));
}


const FormMain = ({col, item, method,detail, setRefresh, setShowForm,setLoading}) => {
  const { store } = React.useContext(MobXProviderContext)


  const initBasic = method==='insert'?{}:{...item}
  const initJson = method==='insert'?[]:item.info?item.info:[]
  const initImgs = method==='insert'?[]:[{url:`${API_SERVER}/${item?.img}`}]
  const initImg  = method==='insert'?null:item?.img


  const [img, setImg] = useState(initImg)
  const [imgs, setImgs] = useState(initImgs)
  const [previewOpen, setPreviewOpen] = useState(false);
  const [previewImage, setPreviewImage] = useState('');
  const [previewTitle, setPreviewTitle] = useState('');
  const [info, setInfo] = useState(initJson);
  const [optModel, setOptModel] = useState([]);
  const [optSupply, setOptSupply] = useState([]);


  // 打開預覽窗口
  const doOpenPrev = async (file) => {
    if (!file.url && !file.preview) {
      file.preview = await getBase64(file.originFileObj);
    }
    setPreviewImage(file.url || file.preview);
    setPreviewOpen(true);
    setPreviewTitle(file.name || file.url.substring(file.url.lastIndexOf('/') + 1));
  }
  // 關閉預覽窗口
  const doClosePrev = () => setPreviewOpen(false);

  // 修改圖片邏輯
  const doChangeImg = ({ fileList: newFileList }) => {
    console.log(newFileList)

    if (newFileList.length>0) {
      if ((newFileList)&&(newFileList[0].status ==='done')) {
        setImg(newFileList[0].response?.data)
      }
    }
    setImgs(newFileList);
  }


  // 加載選擇數據
  useEffect(() => {
    setLoading(true)
    store.querySelInfo().then(r=>{
      setLoading(false)
      
      let model = r.model.map(o=>({value:o.id, label:o.name}))
      let supply = r.supply.map(o=>({value:o.id, label:o.name}))
      setOptModel(model)
      setOptSupply(supply)
    })
  }, []);

  // 保存修改數據
  const onFinish = async (values) => {
    const qrcode = await genQR(values.code)
    
    // 
    values.img = img
    values.info = JSON.stringify(info)
    const params = {
      id: item?.id,
      method,
      qrcode,
      ...values
    }
    console.log(params)
    setLoading(true)
    store.savePart(params).then(r=>{
      setLoading(false)
      setShowForm(false)
      setRefresh(true)
      message.info(MSG.SAVE_SUC)
    })
  };

  // 添加json數據
  const doAddItem =()=>{
    info.push({key:'',val:''})
    setInfo([...info])
  }

  // 刪除json數據
  const doDelItem=(id)=>{
    info.splice(id,1)
    setInfo([...info])
  }

  // 修改數據
  const chgVal =(id,e,key)=>{
    const val = e.currentTarget.value
    info[id][key]= val
    setInfo([...info])
  }


  console.log(imgs.length)

  return (
    <div className={s.form}>
      <div className={s.wrap}>
        <Form 
          {...formItemLayout}
          initialValues={initBasic}
          onFinish={onFinish}
          >

          <div className={s.basic}>
            
            <div className={s.lt}>
              <div className={s.head}>
                <h1>{DB.PART.IMG}</h1>
              </div>
              <Upload
                action = {`${API_SERVER}/upload`}
                listType = "picture-card"
                className = "upload-list-inline" 
                maxCount={1}
                fileList={imgs}
                onPreview={doOpenPrev}
                onChange={doChangeImg}
                disabled={detail}
                >
                {imgs.length >= 1 ? null : <Button icon={<CloudUploadOutlined />} /> }
              </Upload>
            </div>

            <div className={s.rt}>
              <div className={s.head}>
                <h1>{TXT.BAS_INFO}</h1>
              </div>

              <Row gutter={16}>
                <Col span={12}>
                  <Form.Item
                    name="code"
                    label={DB.PART.CODE}
                    labelCol={{ span: 6 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
                <Col span={12}>
                  <Form.Item
                    name="name"
                    label={DB.PART.NAME}
                    labelCol={{ span: 6 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
              </Row>

              <Row gutter={16}>
                <Col span={12}>
                  <Form.Item
                    name="sid"
                    label={DB.PART.SUP_NAME}
                    labelCol={{ span: 6 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Select options={optSupply} disabled={detail}/>
                  </Form.Item>
                </Col>
                <Col span={12}>
                  <Form.Item
                    name="mid"
                    label={DB.PART.MOD_NAME}
                    labelCol={{ span: 6 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Select options={optModel} disabled={detail}/>
                  </Form.Item>
                </Col>
              </Row>
            </div>
          </div>

          <div className={s.head}>
            <h1>{TXT.OTH_INFO}</h1>
            {/*<Button icon={<PlusOutlined />} onClick={()=>doAddItem()} />*/}

            {!detail && <Button icon={<PlusOutlined />} onClick={()=>doAddItem()} />}
          </div>     
          
          <div className={s.info}>
            {info.map((o,i)=>
                <div key={i} className={s.row}>
                  <Input value={o.key} onChange={(e)=>chgVal(i,e,'key')} disabled={detail}/>
                  <Input value={o.val} onChange={(e)=>chgVal(i,e,'val')} disabled={detail}/>
                  
                  {!detail && <Button icon={<DeleteOutlined />} onClick={()=>doDelItem(i)} />}
                </div>
              )}
          </div>

          <div className={s.fun}>
            <Button type="default" style={{width:'120px'}} onClick={()=>setShowForm(false)} >{FN.DIS}</Button>  
            {!detail && <Button type="primary" htmlType="submit" style={{width:'120px'}} >{FN.SAV}</Button> }
          </div>
        </Form>
      </div>

      <Modal open={previewOpen} title={previewTitle} footer={null} onCancel={doClosePrev}>
        <img alt="" style={{ width: '100%', }} src={previewImage} />
      </Modal>
    </div>
    
  )

}

export default  observer(FormMain)