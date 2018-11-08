clear screen;
drop table customer;
set verify off;
create table customer(
customer_id number,
branch_id number,
name varchar2(20), 
phone varchar2(20),
CONSTRAINT customer_pk PRIMARY KEY (customer_id)
);
drop sequence seq_id ;
create sequence seq_id minvalue 1 start with 1 increment by 1 cache 20;

insert into customer values(seq_id.nextval,1,'ratul khan','01830281821');
insert into customer values(seq_id.nextval,1,'Md. Mithun Ali','01632892817');

insert into customer values(seq_id.nextval,2,'Bahadur Ali','01552277277');
insert into customer values(seq_id.nextval,3,'Neymer Jr','01666333777');
insert into customer values(seq_id.nextval,3,'Cr7','01991128279');
insert into customer values(seq_id.nextval,3,'Ozil','01637281934');
insert into customer values(seq_id.nextval,4,'lukaku','01666281935');


--commit;


clear screen;

select * from customer;
