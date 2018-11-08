set serveroutput on;
declare 
notify_exp  SYS_REFCURSOR;
e_id ing_details_1.entry_id%type;
i_id ing_details_1.i_id%type;
q_r ing_details_1.quantity_remained%type;
e_d ing_details_2.expiry_date@site_link%type;


begin

--insert_ingredient(44,'lksdfj');
--insert_ingredient_detail(3,4,1200,11,to_date('20180421','YYYYMMDD'),to_date('20180721','YYYYMMDD'),11);

--insert_used_info(4,to_date('20180327','YYYYMMDD'),12);

notify_exp:=notify(1,to_date('20180626','YYYYMMDD'));

LOOP
        FETCH notify_exp INTO e_id,i_id,q_r,e_d;
	--DBMS_OUTPUT.PUT_LINE('first ------------>>>>>>>');
        EXIT WHEN notify_exp%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(e_id||'   '||i_id||'  '||q_r||'  '||e_d);
   END LOOP;
 
close notify_exp;

dbms_output.put_line('haha---------');
end;
/