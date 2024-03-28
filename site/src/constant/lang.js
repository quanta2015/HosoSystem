export const jp = {
  SYS_NAME:
  {
    JP:'IMS倉庫管理システム',
    EM:'IMS Inventory Management System'
  },
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
    INPUT_USERNAME:'ユーザー名を入力してください',
    INPUT_PASSWORD:'パスワードを入力してください',   
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
    STOCK_IN_NUM:'入庫数',
    STOCK_OUT_INFO:'出庫情報',
    STOCK_OUT_TYPE:'出庫タイプ',
    STOCK_OUT_WARE:'出庫倉庫',
    STOCK_OUT_PART:'出庫部品', 
    STOCK_OUT_NUM:'出庫数',   
    STOCK_CUR_STATE:'状態',
    STOCK_CUR_NUM:'在庫数',
    STOCK_PART_INFO:'部品情報',
    STOCK_REV_REMARK:'備考'   
  },
  
  TAG:{
    NORMAL:'正常',
    WAIT_STOCK_TAKE:'棚卸待ち'
  },

  FN: {
    LOGIN:'ログイン',
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
    UP:'EXCELアプロード',
    STK:'棚卸',
    SRH:'検索',
    RST:'リセット',
    AUDIT: 'レビュー',
    CHK: '棚卸し',
    UNCHK: '棚卸の取消',
    PASS: '承認',
    REJECT: '断る',
    ADD_IN_STOCK:'入庫伝票追加',
    ADD_OUT_STOCK:'出庫伝票追加',
    ADD_STOCK_MOVE:'社內移動伝票追加'
  },
  MSG: {
    CFM: 'レコードを削除してもよろしいですか?',
    EXPT_SUC: 'エクスポート成功！',
    SAVE_SUC: 'セーブ成功！',
    REV_SUC: '承認しました！',
    CHOOSE_IN_TYPE:'入庫タイプを選んでください',
    CHOOSE_OUT_TYPE:'出庫タイプを選んでください',
    CHOOSE_WARE:'倉庫を選んでください',
    CHOOSE_PART:'部品を選んでください',
    NO_PART_IN_WARE:'倉庫内に部品がありません',
    OVER_STOCK:'入力した数は在庫数を超えました',
    CHOOSED:'選択された部品はすでにリストに入っています',
  },
  ROLE:{
    SYS:"システム管理",
    WARE:"倉庫管理",
    PURCHASE:"仕入担当",
    REVIEW:"レビュー担当",
  },
  DB: {
    ID: '番号',
    QRCODE: 'QRコード',    
    PART: {      
      
      IMG: '製品画像',
      CODE: '製品ID',
      NAME: '製品名前',
      MOD_NAME: '製品種類',
      SUP_NAME: 'サプライヤー',
      SUP_PHONE: 'サプライヤー電話番号',
      SUP_ADDR: 'サプライヤーアドレス',
    },
    MODEL: {      
      NAME: '類型',
    },
    SUPPLY: {     
      IMG: 'アイコン',
      NAME: 'サプライヤー名',
      PHONE: '連絡先',
      ADDR: 'サプライヤーアドレス',
    },
    WARE: {      
      DEP_NAME: '所属営業所',
      CODE: '倉庫コード',
      NAME: '倉庫名',
      ADDR: '倉庫アドレース',
      MANAGER: '責任者'
    },
    STOCK: {      
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
      RECEPT_CODE: '伝票番号',
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
      DEP_NAME: '所属営業所',
      USR: 'アカウント',
      NAME: '氏名',
      PWD: 'パスワード',
      ROLE: '役割'
    },
    DEP: {      
      DEP_NAME: '営業所',
      DEP_ADDR: 'アドレース',
      DEP_PHONE: '連絡先'
    },
    SITE: {
      DEP_NAME: '所属営業所',
      NAME: '現場名',
      ADDR: 'アドレース',
      PHONE: '連絡先',
      MANAGER: '責任者'
    }
  },

  STOCK_IO_STATUS:{
    OUT_WAIT_REV:'出庫承認待ち',
    OUT_WAIT:'出庫待ち',
    OUT_DONE:'出庫完成',
    OUT_ERR:'出庫エラー',
    OUT_REJ:'出庫不承認',

    IN_WAIT_REV:'入庫承認待ち',
    IN_WAIT:'入庫待ち',
    IN_DONE:'入庫完成',
    IN_ERR:'入庫エラー',
    IN_SOME:'一部入庫',
    IN_REJ:'入庫不承認',
    
    MOVE_WAIT_REV:'移动承認待ち',
    MOVE_WAIT:'移动待ち',
    MOVE_DONE:'移动完成',
    MOVE_ERR:'移动エラー',
    MOVE_REJ:'移动不承認' 
  }


}
