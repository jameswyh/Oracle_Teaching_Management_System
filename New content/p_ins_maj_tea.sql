CREATE OR REPLACE PROCEDURE p_ins_maj_tea
(v_work_id	 db_major_teacher.work_id%type,
v_reg_no    db_major_teacher.Register_no%type
)
AS
BEGIN
INSERT INTO db_major_teacher(work_id,register_no) 
VALUES(v_work_id,v_reg_no);
END p_ins_maj_tea;
/