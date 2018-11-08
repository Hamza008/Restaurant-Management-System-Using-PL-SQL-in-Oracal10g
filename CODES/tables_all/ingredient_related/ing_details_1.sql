clear screen;
drop table ing_details_1;

create table ing_details_1(entry_id number,
i_id number, 
branch_id number,
total_cost number,
quantity_remained number,
CONSTRAINT ing_details_1_pk PRIMARY KEY (entry_id)
 );
drop sequence seq_entry_id ;
create sequence seq_entry_id minvalue 1 start with 1 increment by 1 cache 20;

insert into ing_details_1 values(1,3,1,160,60);
insert into ing_details_1 values(2,1,1,2500,50);
insert into ing_details_1 values(3,3,2,1000,100);
insert into ing_details_1 values(4,2,1,3000,50);
insert into ing_details_1 values(5,1,2,10000,200);
insert into ing_details_1 values(6,2,2,15000,250);
insert into ing_details_1 values(7,4,3,6000,150);

 


--commit;


clear screen;

select * from ing_details_1;

