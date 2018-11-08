set serveroutput on;
--create or replace procedure insert_employee() is

accept e_id number  prompt 'enter employee_id of employee1 fragment at site1 : '
 
declare
  a number;
   
  b number;
   
begin

a:='&e_id'; 
 

delete from employee1@site_link where employee_id=a;

 
commit;
end;
/
