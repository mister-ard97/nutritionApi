const db = require('../database')


// PAKAI FOREIGN KEY CONSTRAINTS
module.exports = {
    getRecipeData : (req,res) =>{
        var sql = `SELECT * from recipes`
        db.query(sql, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
    
            return res.status(200).send(result)
        })  
    },  
    postRecipeData  : (req,res) =>{
        console.log(req.body)
        var sql = `INSERT INTO recipes set ?`
        db.query(sql,req.body, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
    
            return res.status(200).send(result)
        })  
    },
    editRecipeData : (req,res) =>{
        console.log(req.body)
        console.log(req.params.id)
        var sql = `Update recipes set ? where id = ${req.params.id}`
        db.query(sql,req.body, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
            

            console.log("Update recipe berhasil")
            return res.status(200).send(result)
        })  
    },
    editRecipeDetail : (req,res) =>{
        console.log(req.body)
        console.log(req.params.id)
        var sql = `Update recipe_detail set ? where id = ${req.params.id}`
        db.query(sql,req.body, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
            

            console.log("Update recipe berhasil")
            return res.status(200).send(result)
        })  
    },
    deleteRecipeData : (req,res) =>{
        console.log(req.params.id)
        var sql = `delete from recipes where id = ${req.params.id}`
        db.query(sql, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
            
            console.log("Berhasil delete recipe")
            return res.status(200).send(result)
        })  
    }
}