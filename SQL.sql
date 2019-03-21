create table users(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id),
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	address VARCHAR(250) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	role VARCHAR(12) NOT NULL
);

select *from users;

insert into users values(0, 'Test_super_admin', 'test_user','test_address','M','super_admin');
insert into users values(0, 'Test_admin', 'test_user','test_address','M','admin');
insert into users values(0, 'Test_auditor', 'test_user','test_address','M','auditor');
insert into users values(0, 'Test_operator', 'test_user','test_address','M','operator');