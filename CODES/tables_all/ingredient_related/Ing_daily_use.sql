clear screen;
drop table ing_daily_use;

create table ing_daily_use(use_id number,
entry_id number,
used_date date, 
quantity_used number,
CONSTRAINT ing_daily_use_pk PRIMARY KEY (use_id)
 );
drop sequence seq_use_id ;
create sequence seq_use_id minvalue 1 start with 1 increment by 1 cache 20;

insert into ing_daily_use values(1,1,to_date('20180327','YYYYMMDD'),10);
insert into ing_daily_use values(2,2,to_date('20180327','YYYYMMDD'),5);
insert into ing_daily_use values(3,4,to_date('20180327','YYYYMMDD'),5);
insert into ing_daily_use values(4,3,to_date('20180328','YYYYMMDD'),5);
insert into ing_daily_use values(5,6,to_date('20180328','YYYYMMDD'),2);
insert into ing_daily_use values(6,5,to_date('20180328','YYYYMMDD'),3);
insert into ing_daily_use values(7,7,to_date('20180327','YYYYMMDD'),8);
insert into ing_daily_use values(8,7,to_date('20180329','YYYYMMDD'),10);

 


--commit;


clear screen;

select * from ing_daily_use;

