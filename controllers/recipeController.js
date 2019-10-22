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
        // req.body = ['namarecipe', [ {}, {}, {} ]]  {} >> itemId, gram
        console.log(req.body[0])
        var datarecipe = {
            recipeName : req.body[0]
        }
        var sql = `INSERT INTO recipes set ?`
        db.query(sql,datarecipe, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})

            var recipeid = result.insertId
            // {
            //     itemId,
            //     gram,
            //     recipeid
            // }
            for(var i = 0 ; i<req.body[1].length; i++){
                var data = {...req.body[1][i], recipeId: recipeid }
                console.log(data)
                console.log(i)
                sql = `insert into recipe_detail set ?`
                db.query(sql,data, (err,result)=>{
                    if(err) return res.status(500).send({ message: "Error :(", error: err})
                    
                })  
            }

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
    deleteRecipeDetail : (req, res) => {
        let sql = `delete from recipe_detail where id = ${req.params.id}`
        db.query(sql, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
            

            console.log("Update recipe berhasil")
            return res.status(200).send(result)
        })  
    },
    searchRecipeName : (req,res)=>{
        console.log(req.params.name)
        var sql = `select * from recipes where recipeName like '%${req.params.name}%'`
        db.query(sql,req.body, (err,result)=>{
            if(err) return res.status(500).send({ message: "Error :(", error: err})
            

            console.log("find recipe berhasil")
            console.log('found '+ result.length + ' Products' )
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
    },

    getDetailRecipe: (req, res) => {
        console.log(req.params.id);
        let sql = `select 
        rd.id, 
        rd.gram, 
        i.material,
        i.calorie,
        i.protein,
        i.totalFat,
        i.saturated,
        i.mufa,
        i.pufa,
        i.carbohydrat,
        i.fiber,
        i.price,
        i.source_url
        from recipe_detail as rd join items as i on i.id = rd.itemId where rd.recipeId = ${req.params.id}`;
        db.query(sql, (err, result) => {
            if(err) return res.status(500).send({ message: "Error :(", error: err})

            return res.status(200).send(result)
        })
    },

    editRecipeDetailItem: (req, res) => {
        let sql = `update recipe_detail set gram = ${req.body.data} where id = ${req.params.id}`
        db.query(sql, (err, result) => {
            if(err) return res.status(500).send({ message: "Error :(", error: err})

            return res.status(200).send(result)
        })
    }
}