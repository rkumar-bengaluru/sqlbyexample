/* inner join := intersection */
select z1.animal,z2.animal from zoo_1 z1
 inner join zoo_2 z2 
    on z1.animal = z2.animal;
/** left join := left table & intersection **/
select z1.animal,z2.animal from zoo_1 z1
 left join zoo_2 z2 
    on z1.animal = z2.animal;
/** right join := right table & intersection */
select z1.animal,z2.animal from zoo_1 z1
 right join zoo_2 z2 
    on z1.animal = z2.animal;
/** full join := everything from left & right **/
select z1.animal,z2.animal from zoo_1 z1
 full join zoo_2 z2 
    on z1.animal = z2.animal;