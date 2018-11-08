 
set serveroutput on;

DECLARE
amount number; 
my_cur  SYS_REFCURSOR;
name customer.name@site_link%type;
o_id orderdetail.order_id@site_link%type;
f_id orderdetail.food_id@site_link%type;
quantity orderdetail.quantity@site_link%type;
price fooditem.price@site_link%type;
f_name fooditem.f_name@site_link%type;


begin

--calling make_bill of "bahadur ali" and showing the amount.
dbms_output.put_line('-----------new query------------');
amount:=make_bill('Bahadur Ali');
dbms_output.put_line('total amount is = '||amount);

--calling fund_customers returns name of customers if the bill amount >1000.
dbms_output.put_line('-----------new query------------');
my_cur:=find_customers(1000);

LOOP
        FETCH my_cur INTO name;
        EXIT WHEN my_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(name);
   END LOOP;
close my_cur;

--calling find_customers_of_a_date which returns all customer of a specific day.
dbms_output.put_line('-----------new query------------');
my_cur:=find_customers_of_a_date(to_date('20180421','YYYYMMDD'));
LOOP
        FETCH my_cur INTO name;
        EXIT WHEN my_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(name);
   END LOOP;
close my_cur;

--calling amount_sale_in_a_date where the total amount of bill will be counteed of a specific day.
dbms_output.put_line('-----------new query------------');
amount:=amount_sale_in_a_date(to_date('20180421','YYYYMMDD'));
dbms_output.put_line('total amount in date( '||to_date('20180421','YYYYMMDD')||' ) is ='|| amount);

------calling get_order_info----------------

my_cur:=get_order_info(5);
amount:=0;
LOOP
        FETCH my_cur INTO o_id,f_id,quantity,price,f_name;
        EXIT WHEN my_cur%NOTFOUND;
	amount:=amount+quantity*price;
        DBMS_OUTPUT.PUT_LINE(o_id||' '||f_id||' '||f_name||' '||quantity||' '||price);
   END LOOP;
 dbms_output.put_line('total cost of order 5 ='||amount);
close my_cur;





--calling insert order procedure to insert the order into databas
dbms_output.put_line('-----------new query------------');
insert_order(4,6,3,3,1,1);

dbms_output.put_line('succesful');
commit;

end;
/