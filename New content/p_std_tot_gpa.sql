CREATE OR REPLACE PROCEDURE p_std_tot_gpa( 
v_reg_no IN db_grade.register_no%type, 
v_gpa OUT number
)
AS 
BEGIN 
    v_gpa:=round(fun_std_tot_gpa(v_reg_no),2);
END p_std_tot_gpa;
/

