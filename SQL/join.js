
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "b2VetOffice"
});

con.connect(function(err) {
  if (err) throw err;
  var sql = " SELECT customer.fname AS 'Customer First Name', customer.lname AS 'Customer Last Name', animal.name AS 'Pet Name', animal.species, animal.gender, animal.yearBorn, customer.state FROM customer INNER JOIN animal ON customer.IDcustomer = animal.IDcustomer WHERE customer.state LIKE 'id' AND  animal.species LIKE 'cat' AND animal.gender LIKE 'f' OR animal.species LIKE 'dog' AND customer.state LIKE 'id'  AND animal.gender LIKE 'f' ORDER BY animal.species ASC, animal.yearBorn; ";


  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
});





