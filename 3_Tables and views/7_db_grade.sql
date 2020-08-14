CREATE TABLE DB_GRADE(
REGISTER_NO     CHAR(12)    NOT NULL,
COURSE_NO       VARCHAR2(9) NOT NULL, 
WORK_ID         CHAR(6) NOT NULL, 
COLLEGE_NO      CHAR(2), 
COURSE_NAME     VARCHAR2(20),
REGISTERED_DATE DATE, 
REGISTERED_YEAR CHAR(9),
REGISTERED_TERM CHAR(1), 
FINAL_GRADE     NUMBER(6,2), 
MAKEUP_FLAG     CHAR(1), 
CREDIT          NUMBER(4,1), 
CONSTRAINT PK_RNO_WID_CNO PRIMARY KEY(COLLEGE_NO,REGISTER_NO, COURSE_NO,WORK_ID) VALIDATE,
CONSTRAINT FK_REGISTER_NO FOREIGN KEY(REGISTER_NO) REFERENCES DB_STUDENT(REGISTER_NO) VALIDATE,
CONSTRAINT FK_GRADE_WID FOREIGN KEY(WORK_ID) REFERENCES DB_TEACHER(WORK_ID) VALIDATE,
CONSTRAINT FK_GRADE_CNO FOREIGN KEY(COURSE_NO) REFERENCES DB_COURSE(COURSE_NO) VALIDATE, 
CONSTRAINT FK_F_COLLEGE_NO FOREIGN KEY (COLLEGE_NO) REFERENCES DB_COLLEGE(COLLEGE_NO) VALIDATE) 
ORGANIZATION INDEX TABLESPACE TBS_MAIN 
PCTFREE 5 
INITRANS 1 
MAXTRANS 30 
STORAGE ( BUFFER_POOL KEEP) 
PARTITION BY LIST (COLLEGE_NO) (
PARTITION DB_GRADE_P1 VALUES ('04','05','7') TABLESPACE TBS_ART_FASH_BUSI, 
PARTITION DB_GRADE_P2 VALUES ('01','02') TABLESPACE TBS_BIO_FOO, 
PARTITION DB_GRADE_P3 VALUES ('03','06') TABLESPACE TBS_INFOR_MATI, 
PARTITION DB_GRADE_P4 VALUES (DEFAULT) TABLESPACE TBS_TEACH_STD) 
PARALLEL
/