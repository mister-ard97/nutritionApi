var mysql = require('mysql')

// var db = mysql.createConnection({
//     host : 'localhost',
//     user : 'reza_db',
//     password : 'reza_db10071997',
//     database : 'nutritiondb', // custom
//     port : 3306
// })

var db = mysql.createConnection({
  host : 'localhost',
  user : 'saitama',
  password : 'Pl163178149;',
  database : 'nutritiondb', // custom
  port : 3306
})

db.connect(function(err) {
    console.log("Masuk db")
    if (err) throw err;

    console.log("Connected!");
  });


module.exports = db