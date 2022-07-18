create table company (
    company_code VARCHAR(30),
    founder VARCHAR(30)
);

insert into company values('C1', 'Monika');
insert into company values('C2', 'Samantha');

create table leader_manager (
    leader_manager_code VARCHAR(30),
    company_code VARCHAR(30)
);
insert into leader_manager values('LM1', 'C1');
insert into leader_manager values('LM2', 'C2');

create table senior_manager (
    senior_manager_code VARCHAR(30),
    leader_manager_code VARCHAR(30),
    company_code VARCHAR(30)
);
insert into senior_manager values('SM1','LM1', 'C1');
insert into senior_manager values('SM2','LM1', 'C1');
insert into senior_manager values('SM3','LM2', 'C2');

create table manager (
    manager_code VARCHAR(30),
    senior_manager_code VARCHAR(30),
    leader_manager_code VARCHAR(30),
    company_code VARCHAR(30)
);
insert into manager values('M1','SM1','LM1', 'C1');
insert into manager values('M2','SM3','LM2', 'C2');
insert into manager values('M3','SM3','LM2', 'C2');
create table cemployee (
    employee_code VARCHAR(30),
    manager_code VARCHAR(30),
    senior_manager_code VARCHAR(30),
    leader_manager_code VARCHAR(30),
    company_code VARCHAR(30)
);
insert into cemployee values('E1','M1','SM1','LM1', 'C1');
insert into cemployee values('E2','M1','SM1','LM1', 'C1');
insert into cemployee values('E3','M2','SM3','LM2', 'C2');
insert into cemployee values('E4','M3','SM3','LM2', 'C2');

select c.company_code, c.founder,
       count(distinct l.leader_manager_code) as lm,
	   count(distinct s.senior_manager_code) as sm ,
	   count(distinct m.manager_code) as m ,
	   count(distinct ce.employee_code) as e
	   from company as c
	   left join leader_manager as l on c.company_code = l.company_code
	   left join senior_manager as s on l.company_code = s.company_code
	   left join manager as m on s.company_code = m.company_code
	   left join cemployee as ce on m.company_code = ce.company_code
	   group by c.company_code, c.founder;