var mysql = require('mysql')

var db = mysql.createConnection({
    host : 'localhost',
    user : 'hisbu',
    password : 'P@ssw0rd',
    database : 'nutrition_db', // custom
    port : 3306
})

db.connect(function(err) {
    console.log("Masuk db")
    if (err) throw err;

    console.log("Connected!");
  });


module.exports = db