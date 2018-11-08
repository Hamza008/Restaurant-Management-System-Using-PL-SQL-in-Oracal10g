clear screen;
drop table foodCategory;
create table foodCategory(
c_id number,
c_name varchar2(20),
CONSTRAINT customer_category_pk PRIMARY KEY (c_id)
 );
drop sequence seq_c_id;
create sequence seq_c_id minvalue 1 start with 1 increment by 1 cache 20;

insert into foodCategory values(seq_c_id.nextval,'BURGERS');
insert into foodCategory values(seq_c_id.nextval,'SALADS');
insert into foodCategory values(seq_c_id.nextval,'DESERT BAR');
insert into foodCategory values(seq_c_id.nextval,'MAIN MEALS');


 


--commit;


clear screen;

select * from foodCategory;


