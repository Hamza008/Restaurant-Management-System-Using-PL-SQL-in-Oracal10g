 
create or replace procedure insert_ingredient(
a in number,
c in char
) is
  
  temp number;
    
begin

temp:=0;

 
  select max(i_id) into temp from ingredients ;
  if(a>temp) then
  	insert into ingredients values(a,c);
  else
	dbms_output.put_line('------primary key conflict-----');
  end if;
  commit; 
  
  
end;
/
 
 
 