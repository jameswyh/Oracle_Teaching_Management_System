CREATE TABLE db_Student(
Register_no	Char(12) not null,
Major_no	Char(4),
S_name	        Char(8),
S_Gender	Char(2),
S_dateofbirth	Date,
S_class	        Char(2),
S_address	Varchar2(40),
S_postcode	Char(6),
S_mail_address	Varchar2(60),
S_tele	        Char(11),
S_email	        Varchar2(20), 
CONSTRAINT fk_s_major_no FOREIGN KEY(major_no) 
REFERENCES db_major(major_no) VALIDATE, 
CONSTRAINT pk_register_no PRIMARY KEY(register_no) VALIDATE) 
TABLESPACE tbs_main 
PCTFREE 10 
PCTUSED 50 
INITRANS 2 
MAXTRANS 4
PARALLEL
STORAGE (BUFFER_POOL KEEP) 
LOGGING NOCOMPRESS
/
