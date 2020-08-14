set serveroutput on
DECLARE 
v_reg_no db_student.register_no%type; 
v_name db_student.s_name%type;
v_birthday db_student.s_dateofbirth%type;
v_address db_student.s_address%type; 
v_postcode db_student.s_postcode%type;
v_mail_address db_student.s_mail_address%type;
v_tele db_student.s_tele%type;
v_email db_student.s_email%type;
BEGIN 
v_reg_no:= '201530101101';
v_name:='张大明';
v_birthday:='06-6月-00';
v_address:= '上海市浦东新区曹路镇'; 
v_postcode:='255588';
v_mail_address:='上海市杨浦区五角场';
v_tele:='00000001111';
v_email:='666@qq.com';

p_upd_std_inf(v_reg_no,v_name,v_birthday,v_address,v_postcode,v_mail_address,v_tele,v_email); 
commit;
END; 
/

select*from db_student where register_no='201530101101';
