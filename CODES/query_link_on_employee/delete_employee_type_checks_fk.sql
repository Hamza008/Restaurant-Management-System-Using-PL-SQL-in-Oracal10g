set serveroutput on;
--create or replace procedure insert_employee() is
  
 
 accept type_id number prompt 'enter type_id to delete : '

 
 
declare
  a number;
  temp number;
   
  b number;
   
  
  
begin
a:=0;
temp:=0;
b:=0;
 
b:='&type_id';
select count(*) into temp from employee1@site_link where type_id=b;
select greatest(temp,a) into a from dual;

select count(*) into temp from employee2@site_link where type_id=b;
select greatest(temp,a) into a from dual;


select count(*) into temp from employee3 where type_id=b;
select greatest(temp,a) into a from dual;


select count(*) into temp from employee1@site_link where type_id=b;
select greatest(temp,a) into a from dual;

if a=0 then
  delete from type@site_link where type_id=b;
  dbms_output.put_line('successful deletation');

else
  dbms_output.put_line('the type is reffered in employee_table you can not delete it');
end if;

commit;
end;
/
