
create or replace procedure insert_ingredient_detail(
--entry_id in number,

i_id in number, 
branch_id in number,
total_cost in number,
quantity_remained in number,

entry_date in date, 
expiry_date in date, 
quantity_brought in number
 ) is
 

 temp number;
   
begin
  select NVL(MAX(entry_id), 0) into temp from ing_details_1;
  temp:=temp+1;
   
   
 	
  insert into ing_details_1 values(temp,i_id,branch_id,total_cost,quantity_remained);
  insert into ing_details_2@site_link values(temp,entry_date,expiry_date,quantity_brought);
  DBMS_OUTPUT.PUT_LINE('successfull insertion');
  commit;
end;
/