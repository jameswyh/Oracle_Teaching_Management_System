CREATE OR REPLACE PROCEDURE p_insert_tea_grade
(v_reg_no        db_grade.Register_no%type,
v_course_no	 db_grade.course_no%type,
v_course_name	 db_grade.course_name%type,
v_work_id	 db_grade.work_id%type,
v_college_no     db_grade.course_no%type,
v_reg_date       db_grade.registered_date%type,
v_reg_year	 db_grade.registered_year%type,
v_reg_term	 db_grade.registered_term%type,
v_final_grade   db_grade.final_grade%type,
v_credit         db_grade.credit%type
)
AS
BEGIN
INSERT INTO db_grade(register_no,course_no,course_name,work_id,college_no,
registered_date,registered_year,registered_term,final_grade,credit) VALUES(v_reg_no,v_course_no,v_course_name,v_work_id,v_college_no,
v_reg_date,v_reg_year,v_reg_term,v_final_grade,v_credit);
END p_insert_tea_grade;
/