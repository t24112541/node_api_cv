const express=require('express')
const morgan=require('morgan')
const cors=require('cors')

const config = require('./config')

const app=express()

app.use(morgan('dev'));
app.use(cors());


app.use('/t_customer', require('./api/t_customer.js'))
app.use('/t_style', require('./api/t_style.js'))
app.use('/t_order_status', require('./api/t_order_status.js'))
app.use('/t_product', require('./api/t_product.js'))
app.use('/t_order', require('./api/t_order.js'))

app.listen(config.port,()=>{
    console.log("localhost:"+config.port)
})