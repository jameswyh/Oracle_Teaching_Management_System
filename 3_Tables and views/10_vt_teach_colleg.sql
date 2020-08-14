CREATE VIEW vt_teach_colleg AS 
SELECT t.work_id,t.t_name,t.t_titles,m.major_name,c.college_name,t.t_address,t.t_telephone,t.t_position,t.t_email
FROM staffuser.db_teacher t, staffuser.db_major m,staffuser.db_college c
WHERE t.major_no=m.major_no and t.college_no=c.college_no;
