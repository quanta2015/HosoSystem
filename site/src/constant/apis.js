var mode = process.env.NODE_ENV
let API_SERVER = 'http://localhost'



if (mode === 'development') {
  // API_SERVER = 'http://47.114.124.209:9000'
  API_SERVER = 'http://localhost'
}

if (mode === 'production') {
  // API_SERVER = 'http://47.114.124.209:9000'
  API_SERVER = 'http://localhost'
}

export { API_SERVER }
