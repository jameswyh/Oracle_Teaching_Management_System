DECLARE
v_reg_no         db_grade.Register_no%type;	
v_course_no	     db_grade.course_no%type;
v_course_name	 db_grade.course_name%type;
v_work_id	     db_grade.Work_id%type;
v_college_no     db_grade.course_name%type;
v_reg_date	     db_grade.Registered_date%type;
v_reg_year	     db_grade.Registered_year%type;
v_reg_term	     db_grade.Registered_term%type;
v_final_grade    db_grade.final_grade%type;
v_credit         db_grade.credit%type;
BEGIN
v_reg_no  :='201530101101';	
v_course_no:='CS328';
v_course_name :='计算机组成原理';
v_work_id :='060015';
v_college_no:='04';
v_reg_date := sysdate;
v_reg_year :='2017-2018';
v_reg_term :='1';
v_final_grade:='98';
v_credit :=2.5;
p_insert_tea_grade(v_reg_no,v_course_no,v_course_name,v_work_id,
v_college_no,v_reg_date,v_reg_year,v_reg_term,v_final_grade,v_credit);
END;
/
select * from DB_GRADE;