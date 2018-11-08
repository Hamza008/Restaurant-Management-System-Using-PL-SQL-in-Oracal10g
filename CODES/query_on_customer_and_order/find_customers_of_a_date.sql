CREATE OR REPLACE FUNCTION find_customers_of_a_date(the_date  in date)
  RETURN SYS_REFCURSOR is 
  my_cursor SYS_REFCURSOR;
BEGIN
  OPEN my_cursor FOR 'SELECT name FROM customer@site_link where customer_id@site_link in
(select customer_id@site_link from makeOrder@site_link where order_date@site_link= :x)' 
using the_date;
  RETURN my_cursor;
END;
/
  