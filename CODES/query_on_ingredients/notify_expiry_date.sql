CREATE OR REPLACE FUNCTION notify(branch in number,DATE in date)
  RETURN SYS_REFCURSOR is 
  notify_exp SYS_REFCURSOR;	
BEGIN 
 OPEN notify_exp FOR
	'select t1.entry_id,i_id,quantity_remained,expiry_date from (select entry_id,i_id,quantity_remained from ing_details_1 where branch_id=:x) t1
	inner join (select entry_id,expiry_date from ing_details_2@site_link where expiry_date=:y) t2 on t1.entry_id=t2.entry_id'using branch,DATE; 
 return notify_exp ;
 
END;
/
  





	