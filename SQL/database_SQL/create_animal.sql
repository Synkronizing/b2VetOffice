CREATE TABLE 'animal' (
 'IDanimal' int(11) NOT NULL AUTO_INCREMENT,
 'species' varchar(50) NOT NULL,
 'name' varchar(50) DEFAULT NULL,
 'gender' char(1) NOT NULL,
 'yearBorn' year(4) DEFAULT NULL,
 'entrant' varchar(50) NOT NULL,
 'IDcustomer' int(11) DEFAULT NULL,
 PRIMARY KEY ('IDanimal'),
 KEY 'ID' ('IDcustomer'),
 CONSTRAINT 'animal_ibfk_1' FOREIGN KEY ('IDcustomer') REFERENCES 'customer' ('IDcustomer')
) ENGINE=InnoDB DEFAULT CHARSET=latin1

