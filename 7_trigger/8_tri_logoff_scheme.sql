CREATE OR REPLACE TRIGGER tri_logoff_scheme
BEFORE LOGOFF ON staffuser.schema
BEGIN
   update db_log_event
   SET logoff_date = systimestamp 
   where LOGON_DATE=(select max(LOGON_DATE) from db_log_event);
END tri_logoff_scheme;
/

SELECT * FROM db_log_event;
