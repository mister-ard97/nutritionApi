var mysql = require("mysql");

var db = mysql.createConnection({
  host: "127.0.0.1",
  user: "saitama",
  password: "Pl163178149;",
  database: "nutritiondb", // custom
});

// var db = mysql.createConnection({
//     host : 'localhost',
//     user : 'enverd',
//     password : '123123123',
//     database : 'nutritiondb', // custom
//     port : 3306
// })

db.connect(function (err) {
  console.log("Masuk db");
  if (err) throw err;

  console.log("Connected!");
});

module.exports = db;
