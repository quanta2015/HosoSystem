/* eslint-disable jsx-a11y/anchor-is-valid */
import React,{useEffect,useState,useRef} from 'react';
import {Input,  Space,  Form, Button, Row, Col, Select, Upload, Modal, message} from 'antd'
import { MinusCircleOutlined, PlusOutlined ,CloudUploadOutlined, DeleteOutlined} from '@ant-design/icons';
import {API_SERVER} from '@/constant/apis'
import { observer,MobXProviderContext } from 'mobx-react'
import {filterData,clone,getBase64} from '@/util/fn'
import s from './index.module.less';


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


const FormMain = ({col, item, method, setShowForm,setLoading}) => {
  const { store } = React.useContext(MobXProviderContext)

  const initBasic = method==='insert'?{}:{...item}
  const initJson = method==='insert'?[]:item.info
  const initImgs = method==='insert'?[]:[{ url: item.img }]
  const initImg  = method==='insert'?null:item.img

  const [img, setImg] = useState(initImg)
  const [imgs, setImgs] = useState(initImgs)
  const [previewOpen, setPreviewOpen] = useState(false);
  const [previewImage, setPreviewImage] = useState('');
  const [previewTitle, setPreviewTitle] = useState('');
  const [info, setInfo] = useState(initJson);


  console.log(info,'infp')

  const [optModel, setOptModel] = useState([]);
  const [optSupply, setOptSupply] = useState([]);


  const doOpenPrev = async (file) => {
    if (!file.url && !file.preview) {
      file.preview = await getBase64(file.originFileObj);
    }
    setPreviewImage(file.url || file.preview);
    setPreviewOpen(true);
    setPreviewTitle(file.name || file.url.substring(file.url.lastIndexOf('/') + 1));
  }

  const doClosePrev = () => setPreviewOpen(false);

  const doChangeImg = ({ fileList: newFileList }) => {

    if ((newFileList)&&(newFileList[0].status ==='done')) {
      setImg(newFileList[0].response?.data)
      
    }
    setImgs(newFileList);
  }

  // console.log(item,'item')


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

  const onFinish = (values) => {

    values.img = img
    values.info = JSON.stringify(info)

    const params = {
      id: item.id,
      method,
      ...values
    }
    // console.log(params,'params')

    setLoading(true)
    store.savePart(params).then(r=>{
      setLoading(false)
      setShowForm(false)
      message.info('保存成功')
      // console.log(r)
    })
  };


  const doAddItem =()=>{
    info.push({key:'',val:''})
    setInfo([...info])
  }


  const doDelItem=(id)=>{
    info.splice(id,1)
    setInfo([...info])
  }

  const chgKey =(id,e)=>{
    console.log(e)
    const val = e.currentTarget.value
    info[id].key= val
    setInfo([...info])
  }
  const chgVal =(id,e)=>{
    console.log(e)
    const val = e.currentTarget.value
    info[id].val= val
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
                <h1>製品圖像</h1>
              </div>
              <Upload
                action = {`${API_SERVER}/upload`}
                listType = "picture-card"
                className = "upload-list-inline" 
                maxCount={1}
                fileList={imgs}
                onPreview={doOpenPrev}
                onChange={doChangeImg}
                >
                {imgs.length >= 1 ? null : <Button icon={<CloudUploadOutlined />} /> }
              </Upload>
            </div>

            <div className={s.rt}>
              <div className={s.head}>
                <h1>基本信息</h1>
                <Button icon={<PlusOutlined />} onClick={()=>doAddItem()} />
              </div>

              <Row gutter={16}>
                <Col span={12}>
                  <Form.Item
                    name="code"
                    label="製品編號"
                    labelCol={{ span: 6 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input />
                  </Form.Item>
                </Col>
                <Col span={12}>
                  <Form.Item
                    name="name"
                    label="製品名称"
                    labelCol={{ span: 6 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Input />
                  </Form.Item>
                </Col>
              </Row>

              <Row gutter={16}>
                <Col span={12}>
                  <Form.Item
                    name="sid"
                    label="サプライヤー"
                    labelCol={{ span: 6 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Select options={optSupply} initialvalues={item.sid}/>
                  </Form.Item>
                </Col>
                <Col span={12}>
                  <Form.Item
                    name="mid"
                    label="製品種類"
                    labelCol={{ span: 6 }}
                    wrapperCol={{ span: 18 }}
                  >
                    <Select options={optModel}/>
                  </Form.Item>
                </Col>
              </Row>
            </div>
          </div>

          <div className={s.head}>
            <h1>其他信息</h1>
            <Button icon={<PlusOutlined />} onClick={()=>doAddItem()} />
          </div>     
          
          <div className={s.info}>
            {info.map((o,i)=>
                <div key={i} className={s.row}>
                  <Input value={o.key} onChange={(e)=>chgKey(i,e)}/>
                  <Input value={o.val} onChange={(e)=>chgVal(i,e)}/>
                  <Button icon={<DeleteOutlined />} onClick={()=>doDelItem(i)} />
                </div>
              )}
          </div>

          <div className={s.fun}>
            <Button type="default" style={{width:'120px'}} onClick={()=>setShowForm(false)} >取消</Button>  
            <Button type="primary" htmlType="submit" style={{width:'120px'}} >保存</Button>
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