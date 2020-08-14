CREATE OR REPLACE FUNCTION fun_std_avg_gra(v_reg_no db_grade.Register_no%type,v_term char)
RETURN number
IS
 v_std_avg_grade number ;
BEGIN
select avg(Final_Grade) into v_std_avg_grade
from db_grade
where Register_no=v_reg_no and Registered_term=v_term;

RETURN v_std_avg_grade;
EXCEPTION
when no_data_found then return 999;
END fun_std_avg_gra;
/

set serveroutput on
begin
DBMS_OUTPUT.PUT_LINE (round(fun_std_avg_gra('201530101101','1'),2));
end;

