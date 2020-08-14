set serveroutput on
DECLARE 
v_work_id db_teach_course.work_id%type;
v_course_no db_teach_course.course_no%type;
v_course_no_new db_teach_course.course_no%type;
v_course_name db_teach_course.course_name%type;
BEGIN 
v_work_id:= '050011';
v_course_no:= 'PHY638'; 
v_course_no_new:='CS243';
v_course_name:='±‡“Î‘≠¿Ì';

p_upd_staf_course(v_work_id,v_course_no,v_course_no_new,v_course_name); 
commit;
END; 
/
select * from db_teach_course;