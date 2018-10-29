	
CREATE TABLE 'customer' (
 'IDcustomer' int(11) NOT NULL AUTO_INCREMENT,
 'fname' varchar(50) NOT NULL,
 'mname' varchar(50) DEFAULT NULL,
 'lname' varchar(50) NOT NULL,
 'address' varchar(50) DEFAULT NULL,
 'city' varchar(50) DEFAULT NULL,
 'state' varchar(2) DEFAULT NULL,
 'zip' varchar(10) DEFAULT NULL,
 'phone' varchar(15) DEFAULT NULL,
 'entrant' varchar(50) DEFAULT NULL,
 PRIMARY KEY ('IDcustomer')
) ENGINE=InnoDB DEFAULT CHARSET=latin1
