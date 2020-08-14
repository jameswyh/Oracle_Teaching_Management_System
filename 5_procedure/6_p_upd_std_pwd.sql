CREATE OR REPLACE PROCEDURE p_upd_std_pwd(
v_reg_no in DB_STUDENT_PER.register_no%type,
v_password in DB_STUDENT_PER.LOGIN_PWD_S%type,
v_password_new in DB_STUDENT_PER.LOGIN_PWD_S%type
)
AS
BEGIN
UPDATE DB_STUDENT_PER
SET LOGIN_PWD_S=v_password_new
WHERE register_no=v_reg_no and LOGIN_PWD_S=v_password;
END p_upd_std_pwd;
/
