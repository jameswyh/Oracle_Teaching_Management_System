CREATE VIEW vt_teach_grade AS 
SELECT s.s_name£¬g.course_name£¬t.t_name£¬g.registered_date£¬g.registered_year£¬g.final_Grade£¬g.registered_term£¬g.makeup_flag, g.credit
FROM staffuser.db_grade g£¬staffuser.db_teacher t£¬staffuser.db_Student s
WHERE g.work_id=t.work_id and g.register_no=s.register_no;
