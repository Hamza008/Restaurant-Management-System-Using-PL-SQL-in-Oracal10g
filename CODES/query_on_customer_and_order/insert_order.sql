
create or replace procedure insert_order(
branch_id in number,
customer_id in number,
food_id1 in number,
quantity1 in number,
food_id2 in  number,
quantity2 in  number ) is
  
 order_id number;
 order_date date:=to_date('20180421','YYYYMMDD');
 

 
 amount number;

o_id orderdetail.order_id@site_link%type;
f_id orderdetail.food_id@site_link%type;
quantity orderdetail.quantity@site_link%type;
price fooditem.price@site_link%type;
f_name fooditem.f_name@site_link%type;

 
 my_cur  SYS_REFCURSOR;
  
begin
  
  select NVL(MAX(order_id), 0) into order_id from makeOrder@site_link;
   
  
  
  insert into orderDetail@site_link values(branch_id,order_id+1,food_id1,quantity1);
  insert into orderDetail@site_link values(branch_id,order_id+1,food_id2,quantity2);
  commit;
  my_cur:=get_order_info(order_id+1);
  amount:=0;
  LOOP
        FETCH my_cur INTO o_id,f_id,quantity,price,f_name;
        EXIT WHEN my_cur%NOTFOUND;
	amount:=amount+quantity*price;
        DBMS_OUTPUT.PUT_LINE(o_id||' '||f_id||' '||f_name||' '||quantity||' '||price);
  END LOOP;

  dbms_output.put_line('total cost of order 5 ='||amount);

  close my_cur;  
   
	
  insert into makeOrder@site_link values(branch_id,order_id+1,customer_id,amount,order_date);
  DBMS_OUTPUT.PUT_LINE('successfull insertion');
  commit;
end;
/