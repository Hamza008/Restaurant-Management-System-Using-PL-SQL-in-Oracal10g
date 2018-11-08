clear screen;
drop table makeOrder;
create table makeOrder(
branch_id number,
order_id number, 
customer_id number, 
amount number, 
order_date date,
CONSTRAINT make_order_pk PRIMARY KEY (order_id)
 );
drop sequence seq_order_id;
create sequence seq_order_id minvalue 1 start with 1 increment by 1 cache 20;

insert into makeOrder values(1,seq_order_id.nextval,1,1000,to_date('20180326','YYYYMMDD'));

insert into makeOrder values(1,seq_order_id.nextval,3,1895,to_date('20180421','YYYYMMDD'));
insert into makeOrder values(2,seq_order_id.nextval,1,1095,to_date('20180421','YYYYMMDD'));
insert into makeOrder values(3,seq_order_id.nextval,7,795,to_date('20180421','YYYYMMDD'));

insert into makeOrder values(4,seq_order_id.nextval,3,1125,to_date('20180420','YYYYMMDD'));
insert into makeOrder values(3,seq_order_id.nextval,2,1555,to_date('20180111','YYYYMMDD'));
insert into makeOrder values(2,seq_order_id.nextval,7,1200,to_date('20180123','YYYYMMDD'));
--insert into makeOrder values(seq_order_id.nextval,7,995,to_date('20180228','YYYYMMDD'));
--insert into makeOrder values(seq_order_id.nextval,6,1155,to_date('20180401','YYYYMMDD'));
--commit;


--clear screen;

select * from makeOrder;


