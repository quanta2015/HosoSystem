# 配件管理

# 製品表【PART_TABLE】
```
id     製品ID
name   製品名称
img    製品圖像
sid    サプライヤー (【SUPPLY_TABLE】)
mid    製品種類（【PART_TYPE_TABLE】）
info   綜合信息（JSON）
  |  brand  製品品牌
  |  type   製品型番
  |  fre    頻度
  |  number ナンバー
status 狀態（0：正常 1：刪除）
create_name 作成者
create_time 作成時間
```

- 製品の情報展示（製品の検索）
- 製品の追加
- 製品消去
- 情報編集
- 情報ダウンロード：下载excel
- 製品QR Code:扫码显示手机端页面


# 类别表 【MODEL_TABLE】
```
id  種類ID
name 製品種類名稱
status 狀態（0：正常 1：刪除）
create_name 作成者
create_time 作成時間
```

- 展示/追加/消去/編集/検索


# 供应商表 【SUPPLY_TABLE】
```
id  供應商id
img  供應商圖標
name 供應商名稱
phone 聯繫方式
addr 地址
info 信息（JSON）
status 狀態（0：正常 1：刪除）
create_name 作成者
create_time 作成時間
```

- 展示/追加/消去/編集/検索
  

# 倉庫表 【WARE_TABLE】
```
id 序號
code 倉庫編碼
name 倉庫名稱
addr 倉庫地址
manager 負責人
info 信息（JSON）
status 狀態（0：正常 1：刪除）
create_name 作成者
create_time 作成時間
```

- 展示/追加/消去/編集/検索



# 库存表 【STOCK_TABLE】
```
id  庫存ID
wid  倉庫id (【WARE_TABLE】)
pid 製品id (【PART_TABLE】)
ware_num 零件數量
create_name 作成者
create_time 作成時間
```

- 产品库存数量（出庫、入庫）
- 库存预警（界面顏色變化？短消息？）



# 出入庫表 【STOCK_IO_TABLE】
```
id 記錄id
recept_code 出入庫單號
type 出入庫類型 (1出庫  2入庫)
pid 製品id
wid 倉庫id
num 零件數量
create_name 作成者
create_time 作成時間
status  （出庫 10:出庫待審核 11:待出庫 12:出庫錯誤 13:出庫完成 入庫 20:入庫待審核 21:待入庫 22: 入庫完成 23: 入庫出錯 24:部分入庫  ）
```

- 展示/検索
- 情報ダウンロード：下载excel
