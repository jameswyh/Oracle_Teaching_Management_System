CREATE USER stduser PROFILE DEFAULT IDENTIFIED BY "stduser123" 
DEFAULT TABLESPACE tbs_teach_std  
TEMPORARY TABLESPACE tbs_temp 
QUOTA UNLIMITED ON tbs_art_fash_busi 
QUOTA UNLIMITED ON tbs_bio_foo 
QUOTA UNLIMITED ON tbs_index 
QUOTA UNLIMITED ON tbs_infor_mati 
QUOTA UNLIMITED ON tbs_main 
QUOTA UNLIMITED ON tbs_main
ACCOUNT UNLOCK
/
GRANT Create synonym TO stduser
/
GRANT CREATE VIEW TO stduser
/
GRANT CONNECT TO stduser
/
GRANT RESOURCE TO stduser
/

