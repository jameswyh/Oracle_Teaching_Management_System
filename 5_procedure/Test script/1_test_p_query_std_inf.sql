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
DBMS_OUTPUT.PUT_LINE ('ѧ�ţ�'||v_reg_no); 
DBMS_OUTPUT.PUT_LINE ('������'||v_name); 
DBMS_OUTPUT.PUT_LINE ('���գ�'||v_birthday); 
DBMS_OUTPUT.PUT_LINE('��ͥ��ַ:'||v_address); 
DBMS_OUTPUT.PUT_LINE('�ʱࣺ'||v_postcode); 
DBMS_OUTPUT.PUT_LINE('ͨѶ��ַ��'||v_mail_address);
DBMS_OUTPUT.PUT_LINE('��ϵ�绰��'||v_tele);
DBMS_OUTPUT.PUT_LINE('�������䣺'||v_email);
END; 
/
