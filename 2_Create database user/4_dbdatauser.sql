CREATE USER dbdatauser PROFILE DEFAULT IDENTIFIED BY "dbdatauser123" 
DEFAULT TABLESPACE TBS_MAIN 
TEMPORARY TABLESPACE TBS_TEMP 
QUOTA UNLIMITED ON TBS_ART_FASH_BUSI 
QUOTA UNLIMITED ON TBS_BIO_FOO 
QUOTA UNLIMITED ON TBS_INDEX 
QUOTA UNLIMITED ON TBS_INFOR_MATI 
QUOTA UNLIMITED ON TBS_MAIN 
QUOTA UNLIMITED ON TBS_TEACH_STD 
ACCOUNT UNLOCK
/
GRANT EXPORT FULL DATABASE TO dbdatauser
/
GRANT IMPORT FULL DATABASE TO dbdatauser
/
GRANT "CONNECT" TO DBDATAUSER
/
GRANT DATAPUMP_EXP_FULL_DATABASE TO dbdatauser
/
GRANT DATAPUMP_IMP_FULL_DATABASE TO dbdatauser
/
GRANT EXP_FULL_DATABASE TO dbdatauser
/
GRANT IMP_FULL_DATABASE TO dbdatauser
/
GRANT RESOURCE TO dbdatauser
/