CREATE OR REPLACE PROCEDURE p_upd_std_inf(
v_reg_no in db_student.register_no%type,
v_name in db_student.s_name%type,
v_birthday in db_student.s_dateofbirth%type,
v_address in db_student.s_address%type,
v_postcode in db_student.s_postcode%type,
v_mail_address in db_student.s_mail_address%type,
v_tele in db_student.s_tele%type,
v_email in db_student.s_email%type
)
AS
BEGIN
UPDATE db_student
SET s_name=v_name,s_dateofbirth=v_birthday,s_address=v_address,s_postcode=v_postcode,s_mail_address=v_mail_address,s_tele=v_tele,s_email=v_email
WHERE register_no=v_reg_no;
END p_upd_std_inf;
/
