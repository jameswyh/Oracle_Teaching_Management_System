CREATE OR REPLACE PROCEDURE p_upd_tea_grade
(v_reg_no        db_grade.Register_no%type,
v_course_no	     db_grade.course_no%type,
v_course_name	 db_grade.course_name%type,
v_work_id	     db_grade.work_id%type,
v_college_no     db_grade.course_no%type,
v_reg_year	     db_grade.registered_year%type,
v_reg_term	     db_grade.registered_term%type,
v_final_grade    db_grade.final_grade%type,
v_credit         db_grade.credit%type
)
AS
BEGIN
UPDATE db_grade
SET final_grade=v_final_grade
WHERE register_no=v_reg_no and course_no=v_course_no and course_name=v_course_name and work_id=v_work_id and 
college_no=v_college_no and registered_year=v_reg_year and registered_term=v_reg_term and credit=v_credit;
END p_upd_tea_grade;
/