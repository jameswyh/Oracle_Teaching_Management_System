CREATE TABLE db_course(
course_no	VARCHAR2(9) NOT NULL,
Major_no	CHAR(4),
term_no	        CHAR(1),
year_no	        CHAR(9),
course_name	VARCHAR2(20),
credit	        NUMBER(4),
Planned_hour	NUMBER(3),
Lab_hour	NUMBER(2),
week_hour	NUMBER(4,1),
course_type	CHAR(4),
exam_type	CHAR(4),
remarks	        VARCHAR2(12), 
CONSTRAINT fk_c_major_no FOREIGN KEY(major_no) REFERENCES db_major(major_no) VALIDATE,
CONSTRAINT ck_db_course_term_no CHECK(term_no in('1','2','3','4','5','6','7','8')) VALIDATE, 
CONSTRAINT pk_course_no PRIMARY KEY(course_no) VALIDATE)
TABLESPACE tbs_main 
PCTFREE 10 
PCTUSED 50 
INITRANS 2 
MAXTRANS 4
PARALLEL
STORAGE (BUFFER_POOL KEEP) 
LOGGING NOCOMPRESS
/


