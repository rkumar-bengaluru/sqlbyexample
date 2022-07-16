/** 
As part of business expansion efforts in a company, your help is needed to find all
pairs of customers and agents who have been in contact more than once. For each such
pair display the user id, first name and the customer id, name and the number of their
contacts. Order the result by user id ascending.
**/

CREATE TABLE CUSTOMER (
    ID SERIAL PRIMARY KEY,
    customer_name VARCHAR(255),
    city_id INT,
    customer_address VARCHAR(255),
    contact_person VARCHAR(255),
    email VARCHAR(128),
    phone VARCHAR(128),
    is_active INT
);
INSERT INTO CUSTOMER VALUES (1,'Aryan',1,'Fake Address','Fake Contact','aryan@gmail.com','7777',1);
INSERT INTO CUSTOMER VALUES (2,'Rupak',1,'Fake Address','Fake Contact','rupak@gmail.com','7777',1);
INSERT INTO CUSTOMER VALUES (3,'Amrita',1,'Fake Address','Fake Contact','amrita@gmail.com','7777',1);
INSERT INTO CUSTOMER VALUES (4,'Raj',1,'Fake Address','Fake Contact','raj@gmail.com','7777',1);
CREATE TABLE USER_ACCOUNT (
    ID SERIAL PRIMARY KEY,
    first_name VARCHAR(64),
    last_name VARCHAR(64),
    user_name VARCHAR(64),
    password VARCHAR(255),
    email VARCHAR(128),
    phone VARCHAR(128),
    is_active INT
);
INSERT INTO USER_ACCOUNT VALUES (1,'Aryan','Agent','agent1','password','@gmail','phone',1);
INSERT INTO USER_ACCOUNT VALUES (2,'Rupak','Agent','agent1','password','@gmail','phone',1);
INSERT INTO USER_ACCOUNT VALUES (3,'Amrita','Agent','agent1','password','@gmail','phone',1);
INSERT INTO USER_ACCOUNT VALUES (4,'Raj','Agent','agent1','password','@gmail','phone',1);

CREATE TABLE CONTACT (
    ID SERIAL PRIMARY KEY,
    user_account_id INT,
    customer_id INT,
    contact_type_id INT,
    contact_outcome_id INT,
    comment VARCHAR(128),
    initiated_by_customer INT,
    initiated_by_user INT
);
INSERT INTO CONTACT VALUES (1,1,2,1,1,'comment',1,0);
INSERT INTO CONTACT VALUES (2,2,1,1,1,'comment',1,0);
INSERT INTO CONTACT VALUES (3,3,3,1,1,'comment',1,0);
INSERT INTO CONTACT VALUES (4,2,1,1,1,'comment',1,0);

/**
Solution
*/

select ua.id, ua.first_name,ua.last_name,cu.id,cu.customer_name
	from customer cu, user_account ua, contact c
		where cu.id=c.customer_id and ua.id = c.user_account_id
		group by  ua.id, cu.id
		having count(*) > 1;
