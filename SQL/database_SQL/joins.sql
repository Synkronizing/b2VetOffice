<!-- INNER JOIN specifying on customers with horses --!> 
SELECT customer.fname,customer.lname,animal.name,animal.species
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE animal.species LIKE 'horse';


<!-- INNER JOIN specifying on customers with dogs with a name that starts with f--!> 
SELECT customer.fname, customer.lname,animal.name,animal.species
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE animal.species LIKE 'dog' AND animal.name LIKE 'f%';


<!-- to get the list in order use DESC or ASC --!> 
SELECT customer.fname, customer.lname,animal.name,animal.species,animal.yearBorn
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE animal.species LIKE 'horse' AND animal.name LIKE 'c%' AND animal.yearBorn < 2012;
ORDER BY animal.yearBorn DESC;


<!-- The AS allows you to display the titles as something different to get rid of any confusion--!> 
SELECT customer.fname AS 'Customer First Name', customer.lname AS 'Customer Last Name', animal.name AS 'Pet Name', animal.species, animal.yearBorn
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE animal.species LIKE 'dog' AND animal.gender like 'F'
ORDER BY animal.yearBorn DESC;

SELECT customer.fname AS 'Customer First Name', customer.lname AS 'Customer Last Name', animal.name AS 'Pet Name'
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE customer.lname LIKE '%son'
ORDER BY customer.lname DESC, animal.name ASC;


SELECT customer.fname AS 'Customer First Name', customer.lname AS 'Customer Last Name', animal.name AS 'Pet Name', animal.species, animal.gender, animal.yearBorn, customer.state
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE customer.state LIKE 'id' AND  animal.species LIKE 'cat' AND animal.gender LIKE 'f' OR animal.species LIKE 'dog' AND customer.state LIKE 'id'  AND animal.gender LIKE 'f'
ORDER BY animal.species ASC;

-------------------------------------------------------------------

var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "b2VetOffice"
});

con.connect(function(err) {
  if (err) throw err;
  var sql = "


";


  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
});
-------------------------------------------------------------------
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "toor",
  database: "b2VetOffice"
});

con.connect(function(err) {
  if (err) throw err;
  var sql = "
SELECT customer.fname AS 'Customer First Name', customer.lname AS 'Customer Last Name', animal.name AS 'Pet Name', animal.species, animal.gender, animal.yearBorn, customer.state
FROM customer
INNER JOIN animal
ON customer.IDcustomer = animal.IDcustomer
WHERE customer.state LIKE 'id' AND  animal.species LIKE 'cat' AND animal.gender LIKE 'f' OR animal.species LIKE 'dog' AND customer.state LIKE 'id'  AND animal.gender LIKE 'f'
ORDER BY animal.species ASC;


";


  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log(result);
  });
});



