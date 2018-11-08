clear screen;
drop table orderDetail;
create table orderDetail(
branch_id number,
order_id number, 
food_id number, 
quantity number
--CONSTRAINT order_detail_pk PRIMARY KEY(order_id,food_id)
);



insert into orderDetail values(1,1,3,1);
insert into orderDetail values(1,1,4,2);
insert into orderDetail values(1,1,5,1);
insert into orderDetail values(1,1,8,2);

insert into orderDetail values(1,2,2,1);
insert into orderDetail values(1,2,1,1);


insert into orderDetail values(2,3,2,1);
insert into orderDetail values(2,3,1,2);
insert into orderDetail values(2,3,3,1);


insert into orderDetail values(3,4,5,1);
insert into orderDetail values(3,4,6,2);
insert into orderDetail values(3,4,7,1);


insert into orderDetail values(4,5,4,3);
insert into orderDetail values(4,5,6,3);
insert into orderDetail values(4,5,7,1);

insert into orderDetail values(3,6,2,1);
insert into orderDetail values(3,6,3,1);
insert into orderDetail values(3,6,4,1);

insert into orderDetail values(2,7,8,3);
insert into orderDetail values(2,7,3,2);
insert into orderDetail values(2,7,1,1);



commit;


--clear screen;

select * from orderDetail;


