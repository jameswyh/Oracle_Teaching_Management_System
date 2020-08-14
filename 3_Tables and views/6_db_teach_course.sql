CREATE TABLE db_teach_course(
course_no	VARCHAR2(9) NOT NULL,
Work_id	        CHAR(6) NOT NULL,
course_name	VARCHAR2(20),
launch_year	CHAR(9),
launch_term	CHAR(1),
Executed_plan	VARCHAR2(20), 
CONSTRAINT pk_cs_no_wk_id PRIMARY KEY(course_no,work_id) VALIDATE,
CONSTRAINT fk_tc_curse_no FOREIGN KEY(course_no) REFERENCES db_course(course_no) VALIDATE,
CONSTRAINT fk_tc_work_id FOREIGN KEY(work_id) REFERENCES db_teacher(work_id) VALIDATE)
TABLESPACE tbs_main 
PCTFREE 10 
PCTUSED 40 
INITRANS 2 
MAXTRANS 4
PARALLEL
STORAGE (BUFFER_POOL DEFAULT) 
LOGGING NOCOMPRESS
/

ALTER TABLE db_teach_course ADD CONSTRAINT ck_lc_term CHECK(launch_term IN('1','2','3','4','5','6','7','8'));