CREATE OR REPLACE PROCEDURE p_query_std_inf( 
v_reg_no IN db_student.register_no%type, 
v_name OUT db_student.s_name%type,
v_birthday OUT db_student.s_dateofbirth%type,
v_address OUT db_student.s_address%type, 
v_postcode OUT db_student.s_postcode%type, 
v_mail_address OUT db_student.s_mail_address%type, 
v_tele OUT db_student.s_tele%type, 
v_email OUT db_student.s_email%type) 
AS 
BEGIN 
    SELECT s_name,s_dateofbirth,s_address,s_postcode,s_mail_address,s_tele,s_email 
    INTO v_name,v_birthday,v_address,v_postcode,v_mail_address,v_tele,v_email
    FROM db_student 
    WHERE register_no=v_reg_no; 
END p_query_std_inf;
/

select*from db_student