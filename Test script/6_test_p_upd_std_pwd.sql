set serveroutput on
DECLARE 
v_reg_no DB_STUDENT_PER.register_no%type;
v_password DB_STUDENT_PER.LOGIN_PWD_S%type;
v_password_new DB_STUDENT_PER.LOGIN_PWD_S%type;
BEGIN 
v_reg_no:= '201530101101';
v_password:='123456';
v_password_new:='666666';

p_upd_std_pwd(v_reg_no,v_password,v_password_new); 
commit;
END; 
/

select * from DB_STUDENT_PER;