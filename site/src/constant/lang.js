
export const jp = {
  NAV: {
    MENU_L1: '基本信息管理',
    MENU_L1_1: '營業所管理',
    MENU_L1_2: '現場管理',
    MENU_L1_3: '用戶管理',
    MENU_L1_4: '製品管理',
    MENU_L1_5: '種類設定',
    MENU_L1_6: 'サプライヤー管理',
    MENU_L1_7: '倉庫管理',
    MENU_L2: '部品管理',
    MENU_L2_1: '在庫管理',
    MENU_L2_2: '出入庫管理',
    MENU_L2_3: '出入庫審核',
  },

  TXT: {
    BAS_INFO: '基本情報',
    OTH_INFO: 'その他',
    PART_INFO:'製品情報',
    WARE_INFO: '倉庫情報',
    DEP_NAME: '營業所名稱',
    DEP_ADDR: "營業所地址",
    DEP_PHONE: "營業所電話",
    SUP_IMG: 'アイコン',
    SUP_NAME: 'サプライヤー名',
    SUP_PHONE: '連絡先',
    SUP_ADDR: 'サプライヤーアドレース',
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
    PART: {
      QRCODE: 'QRコード',
      IMG: '製品画像',
      CODE: '製品ID',
      NAME: '製品名前',
      MOD_NAME: '製品種類',
      SUP_NAME: 'サプライヤー',
      SUP_PHONE: 'サプライヤー電話番号',
      SUP_ADDR: 'サプライヤーアドレス',
    },
    MODEL: {
      ID: 'サプライヤーアドレス',
      NAME: '類型',
    },
    SUPPLY: {
      ID: '番号',
      IMG: 'アイコン',
      NAME: 'サプライヤー名',
      PHONE: '連絡先',
      ADDR: 'サプライヤーアドレス',
    },
    WARE: {
      ID: '番号',
      DEP_NAME: '所属営業所',
      CODE: '倉庫コード',
      NAME: '倉庫名',
      ADDR: '倉庫住所',
      MANAGER: '責任者'
    },
    STOCK: {
      ID: '番号',
      WARE_CODE: '倉庫コード',
      WARE_NAME: '倉庫名',
      PART_IMG: '部品画像',
      PART_CODE: '部品コード',
      PART_NAME: '部品名',
      MODEL_NAME: '部品タイプ',
      SUPPLY_NAME: 'サプライヤー',
      NUM: '数量',
      STATUS: '状態'
    },
    STOCK_IO: {
      ID: '番号',
      RECEPT_CODE: '入出庫番号',
      WARE_NAME: '倉庫名',
      PART_IMG: '部品画像',
      PART_CODE: '部品コード',
      PART_NAME: '部品名',
      MODEL_NAME: '部品タイプ',
      SUPPLY_NAME: 'サプライヤー',
      NUM: '数量'
    },
    USER: {
      ID: '番号',
      DEP_NAME: '所属部門',
      USR: 'アカウント',
      NAME: 'ユーザー名',
      PWD: 'パスワード',
      ROLE: '役割'
    },
    DEP: {
      ID: '番号',
      DEP_NAME: '営業所',
      DEP_ADDR: 'アドレース',
      DEP_PHONE: '連絡先'
    },
    SITE: {
      ID: '番号',
      DEP_NAME: '所属営業所',
      NAME: '現場名',
      ADDR: 'アドレース',
      PHONE: '連絡先',
      MANAGER: '責任者'
    }
  }


}