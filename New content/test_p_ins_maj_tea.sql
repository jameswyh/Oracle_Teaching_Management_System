DECLARE
v_work_id	    db_major_teacher.Work_id%type;
v_reg_no        db_major_teacher.Register_no%type;	
BEGIN
v_reg_no  :='201530101101';	
v_work_id :='060015';
p_ins_maj_tea(v_work_id,v_reg_no);
END;
/
select * from db_major_teacher;