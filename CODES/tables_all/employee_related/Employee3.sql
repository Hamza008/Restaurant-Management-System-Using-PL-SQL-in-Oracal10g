clear screen;
drop table employee3;

create table employee3(employee_id number,
type_id number, 
branch_id number,
employee_name varchar2(20),
age number, 
address varchar2(20), 
sex varchar2(5), 
email varchar2(20),
phone varchar2(12),
CONSTRAINT employee3_pk PRIMARY KEY (employee_id)
 );
drop sequence seq_employee3_id ;
create sequence seq_employee3_id minvalue 1 start with 1 increment by 1 cache 20;

insert into employee3 values(seq_employee3_id.nextval,2,4,'kazi enaiet',22,'9-south Mugdha','M','enaiet@gmail.com','01851152346');
insert into employee3 values(seq_employee3_id.nextval,1,4,'sahadat hossain',33,'Mirpur-1','M','Hosain@gmail.com','01394838291');
insert into employee3 values(seq_employee3_id.nextval,2,4,'Mohammad ali',25,'27/B kakrail','M','Mahammad22@gmail.com','01738028172');
insert into employee3 values(seq_employee3_id.nextval,3,4,'faisal ahmed',20,'Modhubag koloni','M','faisal__@gmail.com','01838948385');
insert into employee3 values(seq_employee3_id.nextval,3,4,'sohan sikdar',19,'33 love road,Tejgaon','M','sohan@gmail.com','01838392894');
insert into employee3 values(seq_employee3_id.nextval,4,4,'redwan ahmed',24,'bashkhali uttorpara','M','ridwan@gmail.com','01633229923');


--commit;


--clear screen;

select * from employee3;


