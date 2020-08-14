DECLARE
l_reg_no         db_grade.Register_no%type;	
l_course_no	     db_grade.course_no%type;
l_course_name	 db_grade.course_name%type;
l_work_id	     db_grade.Work_id%type;
l_college_no     db_grade.course_name%type;
l_reg_year	     db_grade.Registered_year%type;
l_reg_term	     db_grade.Registered_term%type;
l_final_grade    db_grade.final_grade%type;
l_credit         db_grade.credit%type;
BEGIN
l_reg_no  :='201530101101';	
l_course_no:='CS449';
l_course_name :='¼ÆËã»úÍøÂç';
l_work_id :='070001';
l_college_no:='04';
l_reg_year :='2017-2018';
l_reg_term :='1';
l_final_grade:='92';
l_credit :=2.5;
p_upd_tea_grade(l_reg_no,l_course_no,l_course_name,l_work_id,
l_college_no,l_reg_year,l_reg_term,l_final_grade,l_credit);
END;
/
select * from DB_GRADE;