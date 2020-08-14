CREATE VIEW vs_grade_teach AS 
SELECT g.register_no£¬g.course_name£¬g.registered_date£¬g.registered_year£¬g.registered_term£¬g.final_grade£¬g.makeup_flag£¬g.credit£¬t.t_name
FROM staffuser.db_grade g£¬staffuser.db_teacher t
WHERE g.work_id=t.work_id;

