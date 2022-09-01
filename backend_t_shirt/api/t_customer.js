const express=require('express')
const mysql=require('mysql')
const config = require('../config')
const app=express()
const bodyParser=require('body-parser')

app.use(bodyParser.json());
module.exports = app

const db=mysql.createConnection(config.db)
db.connect()

app.get('/t_customers',(req,res)=>{
    let sql=`select * from t_customer`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json(results)
        }
    })
})

app.post('/t_customer_filter',(req,res)=>{
    let data=req.body
    let page=(data.page-1)*data.per_page
    let sql=`select * from t_customer where c_name like '%${(data.c_name==undefined?"":data.c_name)}%' && c_tel like '%${(data.c_tel==undefined?"":data.c_tel)}%' limit ${page},${data.per_page}`
    // console.log(sql)
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json(results)
        }
    })
})

app.post('/t_customer_add',(req,res)=>{
    let data=req.body
    let sql=`INSERT into t_customer (c_name,c_tel) VALUES ("${data.c_name}","${data.c_tel}")`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json("insert ok id:"+results.insertId)
        }
    })
})
app.post('/t_customer_add_loop',(req,res)=>{
    // let data=req.body
    for(let i=0;i<=100;i++){
        let sql=`INSERT into t_customer (c_name,c_tel) VALUES ("${"myname:"+i}","${"tel:"+i}")`
        let que=db.query(sql,(err,results)=>{
            
        })
    }
    // let sql=`INSERT into t_customer (c_name,c_tel) VALUES ("${data.c_name}","${data.c_tel}")`
    // let que=db.query(sql,(err,results)=>{
    //     if(err){
    //         res.json(err.sqlMessage)
    //     }else{
            res.json("insert ok:")
    //     }
    // })
})

app.post('/t_customer_update',(req,res)=>{
    let data=req.body
    let sql=`update t_customer set c_name="${data.c_name}",c_tel="${data.c_tel}" where c_id="${data.c_id}"`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json("update ok message:"+results.message)
        }
    })
})

app.get('/t_customer_del/:id',(req,res)=>{
    let id=req.params.id
    let sql=`delete from t_customer where c_id=${id}`
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