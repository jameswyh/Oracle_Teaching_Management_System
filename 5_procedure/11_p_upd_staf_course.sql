CREATE OR REPLACE PROCEDURE p_upd_staf_course(
v_work_id in db_teach_course.work_id%type,
v_course_no in db_teach_course.course_no%type,
v_course_no_new in db_teach_course.course_no%type,
v_course_name in db_teach_course.course_name%type
)
AS
BEGIN
UPDATE db_teach_course
SET course_no=v_course_no_new,course_name=v_course_name
WHERE work_id=v_work_id and course_no=v_course_no;
END p_upd_staf_course;
/

