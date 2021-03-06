

--CREATE OR REPLACE FUNCTION  employees_name_given_type(a_a in varchar2(20),b_b in varchar2(20))
  --RETURN SYS_REFCURSOR is 
set serveroutput on;
declare
  my_cursor SYS_REFCURSOR;
  name varchar2(20);
  
BEGIN
  
   

OPEN my_cursor FOR  
select e1.employee_name from((select employee_name,type_id from employee1@site_link)e1
 inner join
 (select type_id from type@site_link where type_name='Cook')t1 
 on e1.type_id=t1.type_id)
 union
(select e2.employee_name from(select employee_name,type_id from employee2)e2
 inner join
 (select type_id from type@site_link where type_name='Cook')t2 
 on e2.type_id=t2.type_id)
union
(select e3.employee_name from(select employee_name,type_id from employee3)e3
 inner join
 (select type_id from type@site_link where type_name='Cook')t3 
 on e3.type_id=t3.type_id)
;
LOOP
        FETCH my_cursor INTO name;
        EXIT WHEN my_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(name);
   END LOOP;
close my_cursor;
  

END;
/
  