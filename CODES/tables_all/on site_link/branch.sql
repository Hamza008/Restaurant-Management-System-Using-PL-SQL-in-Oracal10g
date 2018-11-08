clear screen;
drop table branch;
set verify off;
create table branch(
branch_id number,
branch_name varchar2(20),
branch_address varchar2(50),
phone varchar2(20),
constraint branch_pk primary key (branch_id)
);
drop sequence seq_branch_id;
create sequence seq_branch_id minvalue 1 start with 1 increment by 1 cache 20;

insert into branch values(seq_branch_id.nextval,'dhaka','11/1,Dholpur, Jatrabari',01613837172);

insert into branch values(seq_branch_id.nextval,'rajshahi','New Widened Rd, Rajshahi',01772826281);
insert into branch values(seq_branch_id.nextval,'comilla','Deshwali Potti Road, Comilla',01663928582);
insert into branch values(seq_branch_id.nextval,'chittagong',' CDA Avenue, Chittagong',01888282722);
commit;
--clear screen;
select * from branch;