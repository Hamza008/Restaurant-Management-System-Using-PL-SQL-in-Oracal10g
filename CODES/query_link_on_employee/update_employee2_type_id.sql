set serveroutput on;
--create or replace procedure insert_employee() is
  
  

 accept e_id number  prompt 'enter employee_id of employee2 fragment : '
 accept type_id number prompt 'enter new type_id number: '

 
 
declare
  a number;
   
  b number;
   
  
  
begin

a:='&e_id'; 
 
b:='&type_id';

update employee2 set type_id= b where employee_id=a;

update employee2@site_link set type_id@site_link=b where employee_id@site_link=a;
commit;
end;
/
