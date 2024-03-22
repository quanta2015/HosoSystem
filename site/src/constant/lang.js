export const jp = {
  NAV: {
    MENU_L1: '基本情報管理',
    MENU_L1_1: '営業所管理',
    MENU_L1_2: '現場管理',
    MENU_L1_3: 'ユーザー管理',
    MENU_L1_4: '製品管理',
    MENU_L1_5: '種類設定',
    MENU_L1_6: 'サプライヤー管理',
    MENU_L1_7: '倉庫管理',
    MENU_L2: '部品管理',
    MENU_L2_1: '在庫管理',
    MENU_L2_2: '入出庫管理',
    MENU_L2_3: '入出庫レビュー',
  },

  TXT: {
    BAS_INFO: '基本情報',
    OTH_INFO: 'その他',
    PART_INFO:'製品情報',
    WARE_INFO: '倉庫情報',
    DEP_NAME: '営業所名',
    DEP_ADDR: "営業所アドレス",
    DEP_PHONE: "営業所連絡先",
    SUP_IMG: 'アイコン',
    SUP_NAME: 'サプライヤー名',
    SUP_PHONE: '連絡先',
    SUP_ADDR: 'サプライヤーアドレース',
    STOCK_IO_TYPE:{
      BUY:'仕入',
      RETURN:'返却',
      TMP:'一時保管',
      MOVE:'社内移動',
      SEL:'販売',
      USE:'社内使用'
    },
    STOCK_IN_INFO:'入庫情報',
    STOCK_IN_TYPE:'入庫タイプ',
    STOCK_IN_WARE:'入庫倉庫',
    STOCK_IN_PART:'入庫部品',
    STOCK_IN_NUM:'在庫数',
    STOCK_OUT_INFO:'出庫情報',
    STOCK_OUT_TYPE:'出庫タイプ',
    STOCK_OUT_WARE:'出庫倉庫',
    STOCK_OUT_PART:'出庫部品',    

  },
  
  TAG:{
    NORMAL:'正常',
    WAIT_STOCK_TAKE:'棚卸待ち'
  },

  FN: {
    ACT: '機能',
    DTL: '詳細',
    ADD: '追加',
    DEL: '削除',
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
    AUDIT: 'レビュー',
    CHK: '在庫状況',
    PASS: '批准',
    REJECT: '断る',
    
  },

  MSG: {
    CFM: 'レコードを削除してもよろしいですか?',
    EXPT_SUC: 'エクスポート成功！',
    SAVE_SUC: 'セーブ成功！',
    CHOOSE_IN_TYPE:'入庫タイプを選んでください',
    CHOOSE_OUT_TYPE:'出庫タイプを選んでください',
    CHOOSE_WARE:'倉庫を選んでください',
    CHOOSE_PART:'部品を選んでください',
    NO_PART_IN_WARE:'倉庫内に部品はありません',
    OVER_STOCK:'入力した数は在庫数を超えました',
    CHOOSED:'該当項目はすでに入力されました',
  },

  DB: {
    ROLE:{
      SYS:"システム",
      WARE:"倉庫",
      PURCHASE:"仕入れ",
      REVIEW:"レビュー",
    },
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
      ID: '番号',
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
      ADDR: '倉庫アドレース',
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
      TYPE:'種類',
      WARE_NAME: '倉庫名',
      IN_WARE_NAME: '元倉庫',
      OUT_WARE_NAME:'目的地倉庫',
      PART_IMG: '部品画像',
      PART_CODE: '部品コード',
      PART_NAME: '部品名',
      MODEL_NAME: '部品タイプ',
      SUPPLY_NAME: 'サプライヤー',
      NUM: '数量',
      REMARK:'備考'
    },
    USER: {
      ID: '番号',
      DEP_NAME: '所属営業所',
      USR: 'アカウント',
      NAME: '氏名',
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
