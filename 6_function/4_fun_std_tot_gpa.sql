CREATE OR REPLACE FUNCTION fun_std_tot_gpa(v_reg_no db_grade.Register_no%type)
RETURN number
IS
 v_std_tot_gpa number ;
BEGIN
select sum(((Final_Grade-50)/10)*credit)/sum(credit) into v_std_tot_gpa
from db_grade
where Register_no=v_reg_no;

RETURN v_std_tot_gpa;
EXCEPTION
when no_data_found then return 999;
END fun_std_tot_gpa;
/

set serveroutput on
begin
DBMS_OUTPUT.PUT_LINE (round(fun_std_tot_gpa('201530101101'),2));
end;

