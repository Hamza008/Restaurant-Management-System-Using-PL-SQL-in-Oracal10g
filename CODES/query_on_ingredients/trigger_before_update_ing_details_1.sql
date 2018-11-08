SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER check_ing_details_1 
BEFORE  update ON ing_details_1 
FOR EACH ROW   
DECLARE   
BEGIN  
   dbms_output.put_line('old ingredinet_id: '||:OLD.i_id);
   dbms_output.put_line('old quantity: '||:OLD.quantity_remained);
   dbms_output.put_line('new quantity: '||:NEW.quantity_remained);
END; 
/ 