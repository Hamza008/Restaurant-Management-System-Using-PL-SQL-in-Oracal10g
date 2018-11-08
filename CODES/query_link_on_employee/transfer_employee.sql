set serveroutput on;
--create or replace procedure insert_employee() is
  
  

 accept e_id number  prompt 'enter employee_id  : '
 accept branch_name char prompt 'enter new branch_name: '

 
 
declare
  id number;  
  a number;
  aa number;
  b number;
  c varchar2(20);
  d varchar2(20);
  e number;
  f varchar2(20);
  g varchar2(5);
  h varchar2(20);
  i varchar2(12);
  b_id number;
   my_cur  SYS_REFCURSOR;
begin

id:='&e_id'; 
c:='&branch_name';
 
aa:=0;
 
select NVL(MAX(employee_id), 0),NVL(MAX(branch_id), 0) into aa,b_id from employee1@site_link where employee_id=id;
if aa=0 then 
   select NVL(MAX(employee_id), 0),NVL(MAX(branch_id), 0) into aa,b_id from employee2@site_link where employee_id=id;
    
elsif aa=0 then
   select NVL(MAX(employee_id), 0),NVL(MAX(branch_id), 0) into aa,b_id from employee3 where employee_id=id;
else 
   dbms_output.put_line('error occured');
   	
end if;
 


if b_id=1 then
  select employee_id,type_id,branch_id,employee_name,age,address,sex,email,phone
  into a,b,b_id,d,e,f,g,h,i from employee1@site_link where employee_id=id;
 
  delete from employee1@site_link where employee_id=id;
  commit;

elsif b_id=3 then 
   
  select employee_id,type_id,branch_id,employee_name,age,address,sex,email,phone
  into a,b,b_id,d,e,f,g,h,i from employee2@site_link where employee_id=id;
  delete from employee2@site_link where employee_id=id;
  delete from employee2 where employee_id=id;
  commit;
else 
  select employee_id,type_id,branch_id,employee_name,age,address,sex,email,phone
  into a,b,b_id,d,e,f,g,h,i from employee3 where employee_id=id;
  delete from employee3 where employee_id=id;
  commit;
end if;
 
dbms_output.put_line('prev branch_id is '|| b_id);



select branch_id into b_id from branch@site_link where branch_name=c;
 
dbms_output.put_line('new branch_id is '|| b_id);
----------------------------
SELECT NVL(MAX(employee_id), 0) into aa
 FROM employee1@site_link;
a:=aa;
--dbms_output.put_line('printing a :'|| a);
SELECT NVL(MAX(employee_id), 0) into aa
 FROM employee2@site_link;
if aa>a then a:=aa;
end if;
--dbms_output.put_line('printing a:: '|| a);
SELECT NVL(MAX(employee_id), 0) into aa
 FROM employee2;
if aa>a then a:=aa;
end if;
--dbms_output.put_line('printing a:::'|| a);
SELECT NVL(MAX(employee_id), 0) into aa
 FROM employee3;
if aa>a then a:=aa;
end if;
--dbms_output.put_line('printing a::::'|| a);
a:=a+1;

------------------------

if b_id=1 then
  insert into employee1@site_link values(a,b,b_id,d,e,f,g,h,i);	
  commit;
elsif b_id=3 then 
  insert into employee2 values(a,b,b_id,d,e,f,g,h,i);
  insert into employee2@site_link values(a,b,b_id,d,e,f,g,h,i);
  commit;
else 
  insert into employee3 values(a,b,b_id,d,e,f,g,h,i);
  commit;
end if;

 commit;
end;
/
