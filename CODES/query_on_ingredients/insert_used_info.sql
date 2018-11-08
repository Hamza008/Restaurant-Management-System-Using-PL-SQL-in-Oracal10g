
create or replace procedure insert_used_info(


e_id in number,
used_date in date, 
quantity_used in number
 
 ) is
 
 
 temp number;
   
begin
  select NVL(MAX(use_id), 0) into temp from ing_daily_use;
  temp:=temp+1;
   
   
 	
  insert into ing_daily_use values(temp,e_id,used_date,quantity_used);
  update ing_details_1 set quantity_remained=(
	select abs(q1-q2) from (select entry_id,quantity_brought q1 from ing_details_2@site_link where entry_id=e_id) t1
  	inner join (select entry_id,sum(quantity_used) q2 from ing_daily_use where entry_id=e_id group by entry_id) t2
 	on t1.entry_id=t2.entry_id ) where entry_id=e_id;

 
  DBMS_OUTPUT.PUT_LINE('-----successfull insertion in  ing_daily_use table------- ');
  commit;
end;
/