CREATE OR REPLACE TRIGGER dele_faculty_his
BEFORE DELETE ON db_teacher for each row
BEGIN
INSERT INTO db_dele_faculty(work_id,t_name,t_email,dele_date) 
VALUES (:old.work_id,:old.t_name,:old.t_email,sysdate);
END;
/
select*from db_dele_faculty;
delete from db_teacher where work_id='000011';
select*from db_teacher;