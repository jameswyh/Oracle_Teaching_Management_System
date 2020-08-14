set serveroutput on
DECLARE 
v_reg_no db_grade.register_no%type default  '201530101101'; 
v_course_name db_grade.course_name%type default  '计算机网络';
v_final_grade db_grade.final_grade%type;
BEGIN 
p_query_std_grade(v_reg_no,v_course_name,v_final_grade); 
DBMS_OUTPUT.PUT_LINE ('学号：'||v_reg_no); 
DBMS_OUTPUT.PUT_LINE('课程名称：'||v_course_name);
DBMS_OUTPUT.PUT_LINE('成绩：'||v_final_grade);
END; 
/

select*from db_grade;