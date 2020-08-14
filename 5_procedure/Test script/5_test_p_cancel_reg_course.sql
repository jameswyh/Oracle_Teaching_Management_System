set serveroutput on
DECLARE 
v_reg_no db_grade.register_no%type default  '201530101101'; 
v_course_no db_grade.course_no%type default  'CS328';
v_work_id db_grade.work_id%type default  '060015';
BEGIN 
p_cancel_reg_course(v_reg_no,v_course_no,v_work_id); 
END; 
/
select * from DB_GRADE;