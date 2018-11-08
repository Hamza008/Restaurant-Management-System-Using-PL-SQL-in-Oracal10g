clear screen;
drop table foodItem;
 set verify off;
create table foodItem(
food_id number,
category_id number,
f_name varchar2(20),
price number,
discount number,
f_details varchar(100),
CONSTRAINT food_pk PRIMARY KEY (food_id)
);
drop sequence seq_food_id ;
create sequence seq_food_id minvalue 1 start with 1 increment by 1 cache 20;


insert into foodItem values(seq_food_id.nextval,1,'JUICY LUCY BURGER',495,20,'300G OF LEAN BEEF MINCE, PACKED ON THE INSIDE WITH CHEESE & TOPPED WITH BACON & SERVED ON A SESAME SEED BUN');
insert into foodItem values(seq_food_id.nextval,1,'BIG BLUE BURGER',575,15,'400G OF LEAN BEEF MINCE. TOPPED WITH BLUE CHEESE');
insert into foodItem values(seq_food_id.nextval,1,'BIG CHICK BURGER',575,15,'300G OF SKINLESS GRILLED CHICKEN BREAST. SERVED WITH PINEAPPLE AND DRIZZLED WITH SWEET CHILI SAUCE.');

insert into foodItem values(seq_food_id.nextval,2,'THAI TUNA SALAD',520,20,'very testy');



insert into foodItem values(5,3,'CHOCOLATE MOUSSE',195,0,'no details');
insert into foodItem values(6,3,'ITALIAN ICE CREAM',195,0,'no details');

insert into foodItem values(7,4,'450G BABY CHICKEN',575,20,'Flame Grilled in a Lemon & Herb or Homemade Peri-Peri Sauce');
insert into foodItem values(8,4,'HOUSE STYLE RUMP',745,15,'300G OF LAZY AGED RUMP. TOPPED WITH AVOCADO & ROCKET');



--commit;


clear screen;

select * from foodItem;


