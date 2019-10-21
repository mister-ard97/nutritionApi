const db = require('../database')



module.exports = {
    getItemData : (req,res) =>{
        var sql = `SELECT * from items`
        db.query(sql, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
    
            return res.status(200).send(result)
        })  
    },
    postItemData  : (req,res) =>{
        console.log(req.body)
        var sql = `INSERT INTO items set ?`
        db.query(sql,req.body, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
    
            return res.status(200).send(result)
        })  
    },
    editItemData : (req,res) =>{
        console.log(req.body)
        console.log(req.params.id)
        var sql = `Update items set ? where id = ${req.params.id}`
        db.query(sql,req.body, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
            

            console.log("Update item berhasil")
            return res.status(200).send(result)
        })  
    },
    deleteItemData : (req,res) =>{
        console.log(req.params.id)
        var sql = `delete from items where id = ${req.params.id}`
        db.query(sql, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
            
            console.log("Berhasil delete item")
            return res.status(200).send(result)
        })  
    }
}