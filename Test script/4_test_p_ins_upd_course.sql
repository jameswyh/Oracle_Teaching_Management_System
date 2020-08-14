DECLARE
v_reg_no         db_grade.Register_no%type;	
v_course_no	     db_grade.course_no%type;
v_course_name	 db_grade.course_name%type;
v_work_id	     db_grade.Work_id%type;
v_college_no     db_grade.course_name%type;
v_reg_date	     db_grade.Registered_date%type;
v_reg_year	     db_grade.Registered_year%type;
v_reg_term	     db_grade.Registered_term%type;
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
v_credit :=2.5;
p_ins_upd_course(v_reg_no,v_course_no,v_course_name,v_work_id,
v_college_no,v_reg_date,v_reg_year,v_reg_term,v_credit);
END;
/

select*from db_grade;
select*from db_teach_course;

