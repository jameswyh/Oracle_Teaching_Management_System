set serveroutput on
DECLARE 
v_work_id db_faculty_per.work_id%type;
v_password db_faculty_per.LOGIN_PWD_F%type;
v_password_new db_faculty_per.LOGIN_PWD_F%type;
BEGIN 
v_work_id:= '020013';
v_password:='123456';
v_password_new:='666666';

p_upd_tea_pwd(v_work_id,v_password,v_password_new); 
commit;
END; 
/
select * from db_faculty_per;