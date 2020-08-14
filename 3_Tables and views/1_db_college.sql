CREATE TABLE DB_COLLEGE(
college_no CHAR(2) NOT NULL,
college_name   VARCHAR2(20),
setting_quota NUMBER(4),
current_quota NUMBER(4),
major_number NUMBER(2),
CONSTRAINT pk_college_no PRIMARY KEY (college_no) VALIDATE ) 
TABLESPACE TBS_MAIN
INITRANS 1 MAXTRANS 4 PARALLEL
/