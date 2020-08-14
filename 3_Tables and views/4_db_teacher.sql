CREATE TABLE db_teacher(
Work_id	        CHAR(6) NOT NULL,
T_name	        CHAR(8),
T_Titles	CHAR(6),
Major_no	CHAR(4),
college_no	CHAR(2),
T_address	VARCHAR2(40),
T_telephone	CHAR(11),
T_position	CHAR(10),
T_email	        VARCHAR2(20), 
CONSTRAINT fk_f_major_no FOREIGN KEY(major_no) 
REFERENCES db_major(major_no) VALIDATE,
CONSTRAINT fk_f_colle_no FOREIGN KEY(college_no) 
REFERENCES db_college(college_no) VALIDATE, 
CONSTRAINT pk_work_id PRIMARY KEY(work_id) VALIDATE)
TABLESPACE tbs_main 
PCTFREE 10 
PCTUSED 40 
INITRANS 2 
MAXTRANS 4
PARALLEL
STORAGE (BUFFER_POOL DEFAULT) 
LOGGING NOCOMPRESS
/



