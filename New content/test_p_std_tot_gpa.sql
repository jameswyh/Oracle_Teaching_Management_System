set serveroutput on
DECLARE 
v_reg_no db_grade.register_no%type default  '201530101101'; 
v_gpa number;
BEGIN 
p_std_tot_gpa(v_reg_no,v_gpa); 
DBMS_OUTPUT.PUT_LINE ('Ñ§ºÅ£º'||v_reg_no); 
DBMS_OUTPUT.PUT_LINE ('GPA£º'||v_gpa); 
END; 
/