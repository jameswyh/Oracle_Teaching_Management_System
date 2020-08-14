CREATE OR REPLACE TRIGGER restrict_upd_time
BEFORE INSERT OR UPDATE OR DELETE ON db_grade
BEGIN
IF (TO_CHAR(sysdate,'DY') IN ('SAT','SUN')) OR (TO_NUMBER(sysdate,'HH24') NOT BETWEEN 8 AND 17) 
THEN RAISE_APPLICATION_ERROR(-20233,'����������������������8��������5������޸�db_grade��');
END IF;
END;
/

drop TRIGGER restrict_upd_time;

delete from db_grade where course_name='���ݽṹ';
select * from db_grade;
