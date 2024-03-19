const cv = require('opencv4nodejs');

// 读取图像
const img = cv.imread('/Users/quanta/Downloads/qr.jpg');

// 创建二维码检测器
const qrCodeDetector = new cv.QRCodeDetector();

// 在图像中检测二维码
const qrCodes = qrCodeDetector.detectAndDecodeMulti(img);

// 打印识别结果
qrCodes.forEach(qrCode => {
    console.log('二维码内容:', qrCode.data);
});
