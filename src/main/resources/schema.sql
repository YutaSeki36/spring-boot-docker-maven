DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
    id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(20),
    last_name varchar(20),
    PRIMARY KEY (id)
);