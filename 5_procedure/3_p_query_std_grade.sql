CREATE OR REPLACE PROCEDURE p_query_std_grade( 
v_reg_no IN db_grade.register_no%type, 
v_course_name IN db_grade.course_name%type,
v_final_grade out db_grade.final_grade%type) 
AS 
BEGIN 
    SELECT final_grade
    INTO v_final_grade
    FROM db_grade 
    WHERE register_no=v_reg_no and course_name=v_course_name; 
END p_query_std_grade;
/