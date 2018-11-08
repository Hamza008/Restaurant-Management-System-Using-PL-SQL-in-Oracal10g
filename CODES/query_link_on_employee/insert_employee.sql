set serveroutput on;
--create or replace procedure insert_employee() is
  
  

 accept type_id number  prompt 'Please enter type_id : '

 accept branch_name char   prompt 'Please enter branch_name  : '

 accept e_name char prompt 'Please enter name: '

 accept age number prompt 'Please enter age number : '

 accept address char  prompt 'Please enter address : '

 accept sex char  prompt 'Please enter sex M/F : '

 accept email char  prompt 'Please enter email   : '

 accept phone char  prompt 'Please enter phone  : '

 
declare
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

a:=0; 
aa:=0;
b:='&type_id';
c:='&branch_name';
d:='&e_name';
e:='&age';
f:='&address';
g:='&sex';
h:='&email';
i:='&phone';
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
--dbms_output.put_line('printing a'|| a);
select branch_id into b_id from branch@site_link where branch_name=c;

 
--dbms_output.put_line('branch name'|| c||' '|| 'branch number '||b_id||' primary key = '||a);

if b_id=1 then
  insert into employee1@site_link values(a,b,b_id,d,e,f,g,h,i);	
  commit;
elsif b_id=3 then 
  insert into employee2 values(a,b,b_id,d,e,f,g,h,i);
  commit; 
  insert into employee2@site_link values(a,b,b_id,d,e,f,g,h,i);
  commit;
else 
  insert into employee3 values(a,b,b_id,d,e,f,g,h,i);
  commit;
end if;
 commit;
end;
/
/*
 
1
comilla
rana
55
comilla city
M
rana@yahoo.com
01782018301
*/
 