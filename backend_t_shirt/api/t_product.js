const express=require('express')
const mysql=require('mysql')
const config = require('../config')
const app=express()
const bodyParser=require('body-parser')

app.use(bodyParser.json());
module.exports = app

const db=mysql.createConnection(config.db)
db.connect()

app.get('/t_product',(req,res)=>{
    let sql=`select * from t_product`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json(results)
        }
    })
})

app.post('/t_product_filter',(req,res)=>{
    let data=req.body
    let page=(data.page-1)*data.per_page
    let sql=`select * from t_product,t_style where t_product.s_id=t_style.s_id && p_gender like '${(data.p_gender==undefined?"":data.p_gender)}%' && s_style like '%${(data.s_style==undefined?"":data.s_style)}%' && p_size like '%${(data.p_size==undefined?"":data.p_size)}%'  limit ${page},${data.per_page}`
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

app.post('/t_product_add',(req,res)=>{
    let data=req.body
    let sql=`INSERT into t_product (p_gender,p_size,p_price,s_id) VALUES ("${data.p_gender}","${data.p_size}","${data.p_price}","${data.s_id}")`
    let que=db.query(sql,(err,results)=>{
        if(err){
            res.json(err.sqlMessage)
        }else{
            res.json("insert ok id:"+results.insertId)
        }
    })
})
app.post('/t_product_add_loop',(req,res)=>{
    let size=["XS","S","M","L","XL"]
    let gender=["Men","Women"]
    let price=["200","300"]
    let s_id=[1,2]
    for(let i=0;i<=10;i++){
        let sql=`INSERT into t_product (p_gender,p_size,p_price,s_id) VALUES ("${gender[i%2]}","${size[i%5]}","${price[i%2]}","${s_id[i%2]}")`
        let que=db.query(sql,(err,results)=>{
            if(err){
                // console.log((err.sqlMessage))
                // console.log((sql))
            }
        })
    }
    res.json("insert ok:")
})

app.post('/t_product_update',(req,res)=>{
    let data=req.body
    let sql=`update t_product set p_gender="${data.p_gender}",p_size="${data.p_size}",p_price="${data.p_price}",s_id="${data.s_id}" where p_id="${data.p_id}"`
    let que=db.query(sql,(err,results)=>{
        if(err){
            // console.log(sql)
            res.json(err.sqlMessage)
        }else{
            res.json("update ok message:"+results.message)
        }
    })
})

app.get('/t_product_del/:id',(req,res)=>{
    let id=req.params.id
    let sql=`delete from t_product where p_id=${id}`
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