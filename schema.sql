/** Create table & insert sample data */
drop table Employee;
create table  if not exists Employee(
    emp_id serial primary key,
    firstName varchar(20),
    lastName varchar(20),
    department varchar(20),
    salary int
);
insert into Employee ( firstName, lastName, department, salary)
    Values ('karan', 'mehta', 'HR', 30000);
insert into Employee ( firstName, lastName, department, salary)
    Values ('ankush', 'rajput', 'Account', 360000); 
insert into Employee ( firstName, lastName, department, salary)
    Values ('priyanshi', 'sharma', 'HR', 500000);   
insert into Employee ( firstName, lastName, department, salary)
    Values ('sanket', 'gupta', 'Developer', 100000);  
insert into Employee ( firstName, lastName, department, salary)
    Values ('rohit', 'sharma', 'admin', 75000);     
insert into Employee ( firstName, lastName, department, salary)
    Values ('shruti', 'kapur', 'HR', 80000);
insert into Employee ( firstName, lastName, department, salary)
    Values ('rohit', 'sharma', 'admin', 75000);                          

drop table zoo_1;
drop table zoo_2;
CREATE TABLE if not exists zoo_1 (
    id INT PRIMARY KEY,
    animal VARCHAR (100) NOT NULL
);

CREATE TABLE if not exists zoo_2 (
    id INT PRIMARY KEY,
    animal VARCHAR (100) NOT NULL
);

INSERT INTO zoo_1(id, animal)
    VALUES
        (1, 'Lion'),
        (2, 'Tiger'),
        (3, 'Wolf'),
        (4, 'Fox');
INSERT INTO zoo_2(id, animal)
    VALUES
        (1, 'Tiger'),
        (2, 'Lion'),
        (3, 'Rhino'),
        (4, 'Panther');