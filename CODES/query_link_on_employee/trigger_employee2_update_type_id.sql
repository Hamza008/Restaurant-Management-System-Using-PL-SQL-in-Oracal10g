SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER check_employee_status 
BEFORE  UPDATE ON employee2 
FOR EACH ROW 
--WHEN (NEW.employee_id in (select employee_id from employee2)) 
DECLARE 
   a number;
   b number; 
   c number;
   d number;
   old_type_name varchar2(20);
   new_type_name varchar2(20);
  
   
BEGIN  
   a:= :OLD.type_id;
   b:= :NEW.type_id;

   select  salary,type_name   into  d,old_type_name
   from type@site_link where type_id=:OLD.type_id; 
  
   dbms_output.put_line(  ' name '|| :OLD.employee_name||'  old type_name : '||
   old_type_name||' odl salary: '||d);

-------------------------------
   select  salary,type_name   into  d,new_type_name
   from type@site_link where type_id=:NEW.type_id; 

   dbms_output.put_line(  ' name '|| :OLD.employee_name||'  new type_name : '||
   new_type_name||' new salary: '||d);


   dbms_output.put_line('Old type: ' || :OLD.type_id); 
   dbms_output.put_line('New type: ' || :NEW.type_id); 

END; 
/ 