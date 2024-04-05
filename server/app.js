var http = require('http')
var https = require('https')
var fs = require('fs')
var path = require('path')
var cors = require('cors')
var dayjs = require('dayjs')
var axios = require('axios')
var dotenv = require('dotenv')
var express = require('express')
var bodyParser = require('body-parser')
var compression = require('compression')

const  get_formated_time = (
  _fmt = 'YYYY/MM/DD hh:mm:ss.iii',
  _dt  = new Date(),
) => [
      [ 'YYYY', _dt.getFullYear()  ],
      [ 'MM',   _dt.getMonth() + 1 ], // なぜ Java と同じ仕様にしたのか？小一時間問いたい
      [ 'DD',   _dt.getDate()      ],
      [ 'hh',   _dt.getHours()     ],
      [ 'mm',   _dt.getMinutes()   ],
      [ 'ss',   _dt.getSeconds()   ],
      [ 'iii',  _dt.getMilliseconds() ],
  ].reduce(
      (s,a) => s.replace( a[0], `${a[1]}`.padStart(a[0].length,'0') ),
      _fmt
  )



dotenv.config()


const app = express()

app.use(cors())
app.use(compression())
app.use(express.json());
app.use(express.urlencoded({ extended: false }))
app.use(bodyParser.json({limit: '10mb', extended: true}))
app.use(bodyParser.urlencoded({limit: '10mb', extended: true}))
app.all("*", (req, res, next) => {
  console.log(`${get_formated_time()} : ${req.path}`);
  next();
});


app.use(express.static(__dirname + '/'));
var router = require('./routes/index')
app.use('/', router);

app.get('*', function (request, response){  
  response.sendFile(path.resolve(__dirname, 'index.html'))
})
 


var options = {
  key: fs.readFileSync('./key/site.key'),
  cert: fs.readFileSync('./key/site.pem')
}

const port = 25566
var server = http.createServer(options,app).listen(port,'0.0.0.0')
server.on('error', onError)
server.on('listening', ()=>{ console.log(`Listening on Port ${port}`) })

function onError(error) {
  if (error.syscall !== 'listen') { throw error; }
  switch (error.code) {
    case 'EACCES':
      console.error(`Port ${http_port} requires elevated privileges`);
      process.exit(1);
      break;
    case 'EADDRINUSE':
      console.error(`Port ${http_port} is already in use`);
      process.exit(1);
      break;
    default:
      throw error;
  }
}
