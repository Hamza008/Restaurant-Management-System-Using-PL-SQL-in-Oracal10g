CREATE OR REPLACE FUNCTION find_customers(bill in number)
  RETURN SYS_REFCURSOR is 
  my_cursor SYS_REFCURSOR;
BEGIN
  OPEN my_cursor FOR 'SELECT name FROM customer@site_link where customer_id@site_link in
(select customer_id@site_link from makeOrder@site_link where amount@site_link > :x)' 
using bill;
  RETURN my_cursor;
END;
/
  