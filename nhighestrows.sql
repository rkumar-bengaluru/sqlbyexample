/* With Order by */
select * from Employee Order by salary desc offset 0 limit 1
/* With Distinct */
select salary from Employee e1
    where N -1 = (select count(distinct e2.salary) from Employee e2
               where e2.salary > e1.salary)