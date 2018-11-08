
clear screen;
drop table ingredients;
 set verify off;
create table ingredients(i_id number, name varchar2(30),
CONSTRAINT ingredients_pk PRIMARY KEY (i_id)
);

insert into ingredients values(1,'Chicken Patty');
insert into ingredients values(2,'Beef Patty');
insert into ingredients values(3,'Bun');
insert into ingredients values(4,'Chicken Piece');
insert into ingredients values(5,'Tuna Fish');
insert into ingredients values(6,'Water');
insert into ingredients values(7,'Coka-cola');

 


--commit;


clear screen;

select * from ingredients;

