--find total amount of bill of customer 'ratul khan'.

create or replace function make_bill	( customer_name in varchar2 ) return number	is

tot number;

begin 
select sum(amount) into tot from makeOrder@site_link where customer_id in(select customer_id from customer@site_link where name=customer_name);

 
return tot;
end;
/