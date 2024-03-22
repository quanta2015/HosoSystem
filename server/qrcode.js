const mysql = require('mysql');
const QRCode = require('qrcode');

// 创建数据库连接
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'liyangtom',
  database: 'ware'
});



// 连接数据库
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to database: ' + err.stack);
    return;
  }
  console.log('Connected to database.');
  
  // 查询 tab_part 表中的记录
  connection.query('SELECT id, code FROM tab_part', (error, results, fields) => {
    if (error) throw error;
    
    // 遍历查询结果
    results.forEach(async (row) => {
      // 生成二维码
      const qrcodeData = await generateQRCode(row.code);
      
      // 更新数据库中的记录，将二维码数据保存到 qrcode 字段
      connection.query('UPDATE tab_part SET qrcode = ? WHERE id = ?', [qrcodeData, row.id], (err, result) => {
        if (err) throw err;
        console.log(`Updated record with ID ${row.id}`);
      });
    });
  });
});

// 生成二维码并返回 Base64 格式数据
async function generateQRCode(code) {
  try {
    // const qrCodeDataURL = await QRCode.toDataURL(code);
    return await QRCode.toDataURL(code);
  } catch (err) {
    console.error('Error generating QR code: ' + err);
    throw err;
  }
}
