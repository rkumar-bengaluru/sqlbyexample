/* Even records */

select * from Employee where emp_id %2 =0;

select * from Employee 
    group by emp_id 
    having mod(emp_id,2) =0;

/* Odd records */
select * from Employee where emp_id %2 =1;

select * from Employee
    group by emp_id
    having mod(emp_id,2)=1;