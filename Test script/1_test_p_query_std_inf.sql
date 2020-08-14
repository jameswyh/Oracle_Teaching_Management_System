set serveroutput on
DECLARE 
v_reg_no db_student.register_no%type default  '201530101101'; 
v_name db_student.s_name%type;
v_birthday db_student.s_dateofbirth%type;
v_address db_student.s_address%type; 
v_postcode db_student.s_postcode%type;
v_mail_address db_student.s_mail_address%type;
v_tele db_student.s_tele%type;
v_email db_student.s_email%type;
BEGIN 
p_query_std_inf(v_reg_no,v_name,v_birthday,v_address,v_postcode,v_mail_address,v_tele,v_email); 
DBMS_OUTPUT.PUT_LINE ('学号：'||v_reg_no); 
DBMS_OUTPUT.PUT_LINE ('姓名：'||v_name); 
DBMS_OUTPUT.PUT_LINE ('生日：'||v_birthday); 
DBMS_OUTPUT.PUT_LINE('家庭地址:'||v_address); 
DBMS_OUTPUT.PUT_LINE('邮编：'||v_postcode); 
DBMS_OUTPUT.PUT_LINE('通讯地址：'||v_mail_address);
DBMS_OUTPUT.PUT_LINE('联系电话：'||v_tele);
DBMS_OUTPUT.PUT_LINE('电子信箱：'||v_email);
END; 
/

select * from db_student;
