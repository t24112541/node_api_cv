
module.exports = {
    port: 4000,
    db: {
      // port:process.env.MYSQL_PORT || 3306,
      host:process.env.DB_HOST || 'localhost',
      user:process.env.DB_USER || 'root',
      password:process.env.DB_ROOT_PW || '',
      database:process.env.DB_NAME ||  't_shirt_store',
      timezone:'asia/bangkok',
    },
}
  