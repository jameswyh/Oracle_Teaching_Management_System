CREATE OR REPLACE FUNCTION fun_std_total_avg_gra(v_reg_no db_grade.Register_no%type)
RETURN number
IS
 v_std_total_avg_grade number ;
BEGIN
select avg(Final_Grade) into v_std_total_avg_grade
from db_grade
where Register_no=v_reg_no;

RETURN v_std_total_avg_grade;
EXCEPTION
when no_data_found then return 999;
END fun_std_total_avg_gra;
/

set serveroutput on
begin
DBMS_OUTPUT.PUT_LINE (round(fun_std_total_avg_gra('201530101101'),2));
end;
