CREATE OR REPLACE PROCEDURE p_cancel_reg_course(
v_reg_no    IN  db_grade.register_no%type,
v_course_no IN  db_grade.course_no%type,
v_work_id   IN  db_grade.work_id%type
)
AS
BEGIN
DELETE db_grade
WHERE register_no=v_reg_no AND course_no=v_course_no AND work_id=v_work_id;
IF SQL%NOTFOUND THEN
   DBMS_OUTPUT.PUT_LINE('¿Î³Ì²»´æÔÚ£¡');
END IF;
COMMIT;
END p_cancel_reg_course;
/


