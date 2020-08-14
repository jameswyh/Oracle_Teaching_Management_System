CREATE OR REPLACE PROCEDURE p_upd_tea_pwd(
v_work_id in db_faculty_per.work_id%type,
v_password in db_faculty_per.LOGIN_PWD_F%type,
v_password_new in db_faculty_per.LOGIN_PWD_F%type
)
AS
BEGIN
UPDATE db_faculty_per
SET LOGIN_PWD_F=v_password_new
WHERE work_id=v_work_id and LOGIN_PWD_F=v_password;
END p_upd_tea_pwd;
/
