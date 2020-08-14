CREATE OR REPLACE FUNCTION fun_std_term_avg_gra(v_major_no db_course.major_no%type,v_term char)
RETURN number
IS
 v_std_term_avg_grade number ;
BEGIN
select avg(Final_Grade) into v_std_term_avg_grade
from db_grade
where Registered_term=v_term and v_major_no=(select major_no from DB_COURSE where db_grade.course_no = course_no);

RETURN v_std_term_avg_grade;
EXCEPTION
when no_data_found then return 999;
END fun_std_term_avg_gra;
/

set serveroutput on
begin
DBMS_OUTPUT.PUT_LINE (round(fun_std_term_avg_gra('0303','1'),2));
end;

