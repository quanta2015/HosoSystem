/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Input,  Space,  Form, Button, Row, Col, Select, Upload, Modal, message ,Tag} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,CloudUploadOutlined, DeleteOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import s from './index.module.less';
import {jp} from '@constant/lang'
const { FN,MSG,DB,TXT,TAG } = jp

const formItemLayout = {
  labelCol: {
    md: { span: 6 },
  },
  wrapperCol: {
    md: { span: 6 },
  },
};



const FormMain = ({col,detail, item, method,setRefresh, setShowForm,setLoading}) => {
  const { store } = React.useContext(MobXProviderContext)


  const initBasic = method==='insert'?{}:{...item}
  const initJson = method==='insert'?[]:item.info
  const initImgs = method==='insert'?[]:[{url:`${API_SERVER}/${item?.part_img}`}]
  const initImg  = method==='insert'?null:item?.part_img

  const [info, setInfo] = useState(initJson);
  const [img, setImg] = useState(initImg)
  const [imgs, setImgs] = useState(initImgs)
  const [previewOpen, setPreviewOpen] = useState(false);
  const [previewImage, setPreviewImage] = useState('');
  const [previewTitle, setPreviewTitle] = useState('');

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
      if (newFileList.length>0) {
        if ((newFileList)&&(newFileList[0].status ==='done')) {
          setImg(newFileList[0].response?.data)
        }
      }
      setImgs(newFileList);
    }


  // 保存修改數據
  const onFinish = (values) => {
    
    values.info = JSON.stringify(info)
    const params = {
      id: item?.id,
      method,
      ...values
    }

    setLoading(true)
    store.saveWare(params).then(r=>{
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
            <div className={s.head}>
              <h1>{TXT.PART_INFO}</h1>
            </div>
            <Row gutter={16}>
                <Col span={8}>
                  <Form.Item
                    name="part_code"
                    label={DB.PART.CODE}
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
                <Col span={8}>
                  <Form.Item
                    name="part_name"
                    label={DB.PART.NAME}
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
                <Col span={8}>
                  <Form.Item
                    name="model_name"
                    label={DB.STOCK.MODEL_NAME}
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
                <Col span={8}>
                  <Form.Item
                    name="supply_name"
                    label={DB.STOCK.SUPPLY_NAME}
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
              </Row>           
          </div>

          <div className={s.basic}>
            <div className={s.head}>
              <h1>{TXT.WARE_INFO}</h1>
            </div>  
            <Row gutter={16}>
                <Col span={8}>
                  <Form.Item
                    name="ware_code"
                    label={DB.WARE.CODE}
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
                <Col span={8}>
                  <Form.Item
                    name="ware_name"
                    label={DB.WARE.NAME}
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
                <Col span={8}>
                  <Form.Item
                    name="num"
                    label={DB.STOCK.NUM}
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input disabled={detail} />
                  </Form.Item>
                </Col>
                <Col span={8}>
                  <Form.Item
                    name="status"
                    label={DB.STOCK.STATUS}
                    labelCol={{ span: 8 }}
                    wrapperCol={{ span: 18 }}
                  >
                    {item.status===0? <Tag color="blue">{TAG.NORMAL}</Tag>:<Tag color="red">{TAG.WAIT_STOCK_TAKE}</Tag> }
                  </Form.Item>
                </Col>
              </Row>           
          </div>
          <div className={s.fun}>
            <Button type="default" style={{width:'120px'}} onClick={()=>setShowForm(false)} >{FN.DIS}</Button>             
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