const express=require('express')
const mysql=require('mysql')
const config = require('../config')
const app=express()
const bodyParser=require('body-parser')

app.use(bodyParser.json());
module.exports = app

const db=mysql.createConnection(config.db)
db.connect()

app.get('/t_order_status',(req,res)=>{
    let sql=`select * from t_order_status`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json(results)
        }
    })
})

app.post('/t_order_status_filter',(req,res)=>{
    let data=req.body
    let page=(data.page-1)*data.per_page
    let sql=`select * from t_order_status where os_status like '%${(data.os_status==undefined?"":data.os_status)}%'  limit ${page},${data.per_page}`
    // console.log(sql)
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json(results)
        }
    })
})

app.post('/t_order_status_add',(req,res)=>{
    let data=req.body
    let sql=`INSERT into t_order_status (os_status) VALUES ("${data.os_status}")`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json("insert ok id:"+results.insertId)
        }
    })
})
app.post('/t_order_status_add_loop',(req,res)=>{
    for(let i=0;i<=100;i++){
        let sql=`INSERT into t_order_status (os_status) VALUES ("${"mystyle:"+i}")`
        let que=db.query(sql,(err,results)=>{})
    }
    res.json("insert ok:")
})

app.post('/t_order_status_update',(req,res)=>{
    let data=req.body
    let sql=`update t_order_status set os_status="${data.os_status}" where os_id="${data.os_id}"`
    let que=db.query(sql,(err,results)=>{
        if(err){
            // console.log(sql)
            res.json(err.sqlMessage)
        }else{
            res.json("update ok message:"+results.message)
        }
    })
})

app.get('/t_order_status_del/:id',(req,res)=>{
    let id=req.params.id
    let sql=`delete from t_order_status where os_id=${id}`
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