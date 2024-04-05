let conf = {
  host: 'mysql',
  port: 3306,
  database: process.env.MYSQL_DATABASE || 'root',
  user:     'root',
  password: process.env.MYSQL_ROOT_PASSWORD || 'liyangtom',
  multipleStatements: true,
  secret: 'airtp2021',
};

module.exports = conf;
