
export const jp = {
  NAV: {
    MENU_L1:'基本信息管理',
    MENU_L1_1:'營業所管理',
    MENU_L1_2:'現場管理',
    MENU_L1_3:'用戶管理',
    MENU_L1_4:'製品管理',
    MENU_L1_5:'種類設定',
    MENU_L1_6:'サプライヤー管理',
    MENU_L1_7:'倉庫管理',
    MENU_L2:'部品管理',
    MENU_L2_1:'在庫管理',
    MENU_L2_2:'出入庫管理',
    MENU_L2_3:'出入庫審核',
  },

  TXT: {
    BAS_INFO: '基本情報',
    OTH_INFO: 'その他',
    PART_INFO:'製品情報',
    WARE_INFO: '倉庫情報',
    DEP_NAME: '營業所名稱',
    DEP_ADDR: "營業所地址",
    DEP_PHONE: "營業所電話",

  },

  FN: {
    ACT: '機能',
    DTL: '詳情',
    ADD: '追加',
    DEL: '刪除',
    EDIT: '編集',
    OK: 'はい',
    NO: 'いいえ',
    CLS: 'キャンセル',
    DIS: '閉じる',
    SAV: 'セーブ',
    DL:'情報ダウンロード',
    STK:'棚卸',
    SRH:'検索',
    RST:'リセット',
  },

  MSG: {
    CFM: '确认要删除记录?',
    EXPT_SUC: '导出成功！',
    SAVE_SUC: '保存成功',

  },

  DB: {
    PART:{
      QRCODE:'QRコード',
      IMG:'製品画像',
      CODE:'製品ID',
      NAME:'製品名前',
      MOD_NAME:'製品種類',
      SUP_NAME:'サプライヤー',
      SUP_PHONE:'サプライヤー電話番号',
      SUP_ADDR:'サプライヤーアドレス',
    },
    MODEL:{
      ID:'サプライヤーアドレス',
      NAME:'類型',
    },
    SUPPLY:{
      ID:'番号',
      IMG:'アイコン',
      NAME:'サプライヤー名',
      PHONE:'連絡先',
      ADDR:'サプライヤーアドレス',
    },
    WARE:{
      ID:'番号',
      DEP_NAME:'所屬營業所',
      CODE:'倉庫編碼',      
      NAME:'倉庫名稱',
      ADDR:'倉庫地址',
      MANAGER:'負責人',
    },
    STOCK:{
      ID:'番号',
      WARE_CODE:'倉庫編碼',
      WARE_NAME:'倉庫名稱',      
      PART_IMG:'部品圖標',
      PART_CODE:'部品編碼',
      PART_NAME:'部品名稱',
      MODEL_NAME:'部品類型',
      SUPPLY_NAME:'供應商',
      NUM:'數量',
      STATUS:'狀態',
    },
    STOCK_IO:{
      ID:'番号',
      RECEPT_CODE:'出入庫單號',
      WARE_NAME:'倉庫名稱',      
      PART_IMG:'部品圖標',
      PART_CODE:'部品編碼',
      PART_NAME:'部品名稱',
      MODEL_NAME:'部品類型',
      SUPPLY_NAME:'供應商',
      NUM:'數量',      
    },
    USER:{
      ID:'編號',
      DEP_NAME:'所屬部門',
      USR:'賬號',
      NAME:'用戶名',
      PWD:'密碼',
      ROLE:'角色'
    },
    DEP: {
      ID: '編號',
      DEP_NAME: '營業所',
      DEP_ADDR: '地址',
      DEP_PHONE:'聯繫方式'
    },
    SITE:{
      ID: '編號',
      DEP_NAME: '所屬營業所',
      NAME: '現場名稱',
      ADDR: '地址',
      PHONE: '聯繫方式',
      MANAGER: '負責人',
    }
  }

  
  
}