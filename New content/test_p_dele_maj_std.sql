set serveroutput on
DECLARE 
v_work_id db_major_teacher.work_id%type default  '060015';
v_reg_no db_major_teacher.register_no%type default  '201530101101'; 
BEGIN 
p_dele_maj_std(v_work_id,v_reg_no); 
END; 
/
select * from db_major_teacher;