CREATE OR REPLACE FUNCTION amount_sale_in_a_date(the_date  in date) return
  number is

tot number;

BEGIN
  SELECT sum(amount) into tot from makeOrder@site_link where order_date@site_link= the_date;
  RETURN tot;
END;
/
  