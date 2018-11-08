clear screen;
drop table type;
create table type(
type_id number,
type_name varchar2(20),
salary number,
CONSTRAINT type_pk PRIMARY KEY (type_id)
);
 
drop sequence seq_type_id;
create sequence seq_type_id minvalue 1 start with 1 increment by 1 cache 20;

insert into type values(seq_type_id.nextval,'Manager',30000);
insert into type values(seq_type_id.nextval,'Cook',25000);
insert into type values(seq_type_id.nextval,'server',18000);
insert into type values(seq_type_id.nextval,'cleaner',15000);

--commit;


clear screen;

select * from type;


