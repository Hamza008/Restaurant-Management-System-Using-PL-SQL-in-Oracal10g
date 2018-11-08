clear screen;
drop table employee1;

create table employee1(
employee_id number,
type_id number, 
branch_id number,
employee_name varchar2(20),
age number, 
address varchar2(20), 
sex varchar2(5), 
email varchar2(20),
phone varchar2(12),
CONSTRAINT employee1_pk PRIMARY KEY (employee_id)
 );
 
insert into employee1 values(1,2,1,'Hamza',22,'9-south Mugdha','M','ah226038@gmail.com','01851152343');

insert into employee1 values(2,2,1,'Masud',25,'27/B kakrail','M','Masud22@gmail.com','01738028170');


insert into employee1 values(3,1,1,'Sujan',25,'27/B polton','M','Sujan23@gmail.com','017323983370');


--commit;


clear screen;

select * from employee1;


