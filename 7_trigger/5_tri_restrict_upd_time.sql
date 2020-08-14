CREATE OR REPLACE TRIGGER restrict_upd_time
BEFORE INSERT OR UPDATE OR DELETE ON db_grade
BEGIN
IF (TO_CHAR(sysdate,'DY') IN ('SAT','SUN')) OR (TO_NUMBER(sysdate,'HH24') NOT BETWEEN 8 AND 17) 
THEN RAISE_APPLICATION_ERROR(-20233,'您不能在周六、周日上午8点至下午5点更新修改db_grade。');
END IF;
END;
/

drop TRIGGER restrict_upd_time;

delete from db_grade where course_name='数据结构';
select * from db_grade;
