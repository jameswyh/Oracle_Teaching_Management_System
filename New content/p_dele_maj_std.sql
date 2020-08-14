CREATE OR REPLACE PROCEDURE p_dele_maj_std(
v_work_id   IN  db_major_teacher.work_id%type,
v_reg_no    IN  db_major_teacher.register_no%type
)
AS
BEGIN
DELETE db_major_teacher
WHERE register_no=v_reg_no AND work_id=v_work_id;
IF SQL%NOTFOUND THEN
   DBMS_OUTPUT.PUT_LINE('该学生不存在！');
END IF;
COMMIT;
END p_dele_maj_std;
/