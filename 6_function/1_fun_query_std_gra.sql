CREATE OR REPLACE FUNCTION fun_query_std_gra(v_reg_no db_grade.Register_no%type,v_cno varchar2,v_teaid char)
RETURN number
IS
 v_std_c_grade number ;
BEGIN
select Final_Grade into v_std_c_grade
from db_grade
where Register_no=v_reg_no and course_no=v_cno and work_id=v_teaid;
RETURN v_std_c_grade;
EXCEPTION
when no_data_found then return 999;
END fun_query_std_gra;
/

set serveroutput on
begin
DBMS_OUTPUT.PUT_LINE (fun_query_std_gra('201530101101','CS449','070001'));
end;

select * from db_grade;

