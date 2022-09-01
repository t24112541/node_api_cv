const express=require('express')
const mysql=require('mysql')
const config=require('../config')
const app=express()
const bodyParser=require('body-parser')
var dateTime=require('node-datetime');
var dt=dateTime.create();
var formatted=dt.format('Y-m-d H:M:S');


app.use(bodyParser.json());
module.exports=app

const db=mysql.createConnection(config.db)
db.connect()

app.get('/t_order',(req,res)=>{
    let sql=`select * from t_order`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json(results)
        }
    })
})

app.post('/t_order_filter',(req,res)=>{
    let data=req.body
    let page=(data.page-1)*data.per_page
    let date_start=(data.date_start==undefined?"2022-01-1":data.date_start) //2022-08-25 12:29:06
    let date_end=(data.date_end==undefined?formatted:data.date_end) 
    let sql=`   SELECT
                    t_customer.*, 
                    t_order.*, 
                    t_order_status.*, 
                    t_product.*, 
                    t_style.*
                FROM
                    t_order
                INNER JOIN
                    t_customer
                ON 
                    t_order.c_id = t_customer.c_id
                INNER JOIN
                    t_order_status
                ON 
                    t_order.os_id = t_order_status.os_id
                INNER JOIN
                    t_product
                ON 
                    t_order.p_id = t_product.p_id
                INNER JOIN
                    t_style
                ON 
		            t_product.s_id = t_style.s_id 
                && 
                os_status like '${(data.os_status==undefined?"":data.os_status)}%' &&
                t_order.o_date_paid BETWEEN "${date_start}" AND "${date_end}"
                limit ${page},${data.per_page}`
            
    // console.log(sql)
    let que=db.query(sql,(err,results)=>{
        if(err){
            // console.log(sql)
            res.json(err.sqlMessage)
        }else{
            // console.log(sql)
            res.json(results)
        }
    })
})

app.post('/t_order_add',(req,res)=>{
    let data=req.body
    let o_date_paid=formatted;
    let sql=`INSERT into t_order (o_date_paid,o_shipping_address,p_id,os_id,c_id) VALUES ("${o_date_paid}","${data.o_shipping_address}","${data.p_id}","${data.os_id}","${data.c_id}")`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json("insert ok id:"+results.insertId)
        }
    })
})
app.post('/t_order_add_loop',(req,res)=>{
    let size=["XS","S","M","L","XL"]
    let gender=["Men","Women"]
    let price=["200","300"]
    let s_id=[1,2]
    for(let i=0;i<=10;i++){
        let sql=`INSERT into t_order (p_gender,p_size,p_price,s_id) VALUES ("${gender[i%2]}","${size[i%5]}","${price[i%2]}","${s_id[i%2]}")`
        let que=db.query(sql,(err,results)=>{
            if(err){
                // console.log((err.sqlMessage))
                // console.log((sql))
            }
        })
    }
    res.json("insert ok:")
})

app.post('/t_order_update',(req,res)=>{
    let data=req.body
    let sql=`update t_order set o_shipping_address="${data.o_shipping_address}",p_id="${data.p_id}",os_id="${data.os_id}",c_id="${data.c_id}" where o_id="${data.o_id}"`
    let que=db.query(sql,(err,results)=>{
        if(err){
            // console.log(sql)
            res.json(err.sqlMessage)
        }else{
            res.json("update ok message:"+results.message)
        }
    })
})

app.get('/t_order_del/:id',(req,res)=>{
    let id=req.params.id
    let sql=`delete from t_order where o_id=${id}`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            let dt={}
            if(results.affectedRows==1){
                dt={
                    status:"ok",
                    message:"delete complete"
                }
            }else{
                dt={
                    status:"fail",
                    message:"delete fail"
                }
            }
            res.json(dt)
        }
    })
})