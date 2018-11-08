clear screen;
drop table employee2;

create table employee2(
employee_id number,
type_id number, 
branch_id number,
employee_name varchar2(20),
age number, 
address varchar2(20), 
sex varchar2(5), 
email varchar2(20),
phone varchar2(12),
CONSTRAINT employee2_pk PRIMARY KEY (employee_id)
 );
 
insert into employee2 values(4,1,3,'Habib',33,'Mirpur-2','M','Habib101@gmail.com','01884838292');   
insert into employee2 values(5,2,3,'sakhwat sikdar',22,'raipara lakhmipur','M','sakhwat@gmail.com','01633229334');
insert into employee2 values(6,3,3,'hiru mia',34,'katiadi,kishoregonj','M','Hiru@gmail.com','01394838483');  
insert into employee2 values(7,4,3,'Sohan',23,'khilkhet,dhaka','M','sohan@gmail.com','01788889321');  


--commit;


--clear screen;

select * from employee2;


