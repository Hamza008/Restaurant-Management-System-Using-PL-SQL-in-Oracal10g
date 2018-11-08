
--returns order id food quantity and price of a food.

CREATE OR REPLACE FUNCTION get_order_info(o_id in number)
  RETURN SYS_REFCURSOR is 
  my_cursor SYS_REFCURSOR;
BEGIN
  
  
OPEN my_cursor FOR  
'select orderdetail.order_id ,orderdetail.food_id ,
orderdetail.quantity ,foodItem.price ,
foodItem.f_name  from orderdetail@site_link inner join foodItem@site_link on 
orderDetail.food_id =foodItem.food_id  and 
orderDetail.order_id = :x' using o_id;

 RETURN my_cursor;

END;
/
  