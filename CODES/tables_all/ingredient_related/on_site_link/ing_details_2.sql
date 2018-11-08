clear screen;
drop table ing_details_2;

create table ing_details_2(entry_id number,
entry_date date, 
expiry_date date, 
quantity_brought number,
CONSTRAINT ing_details_2_pk PRIMARY KEY (entry_id)
 );

insert into ing_details_2 values(1,to_date('20180326','YYYYMMDD'),to_date('20180402','YYYYMMDD'),60);
insert into ing_details_2 values(2,to_date('20180326','YYYYMMDD'),to_date('20180626','YYYYMMDD'),50);
insert into ing_details_2 values(3,to_date('20180326','YYYYMMDD'),to_date('20180402','YYYYMMDD'),100);
insert into ing_details_2 values(4,to_date('20180326','YYYYMMDD'),to_date('20180626','YYYYMMDD'),50);
insert into ing_details_2 values(5,to_date('20180326','YYYYMMDD'),to_date('20180402','YYYYMMDD'),200);
insert into ing_details_2 values(6,to_date('20180327','YYYYMMDD'),to_date('20180627','YYYYMMDD'),250);
insert into ing_details_2 values(7,to_date('20180328','YYYYMMDD'),to_date('20180628','YYYYMMDD'),150);

 


--commit;


clear screen;

select * from ing_details_2;

