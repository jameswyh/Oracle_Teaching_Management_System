CREATE OR REPLACE TRIGGER tri_shutdown_db
BEFORE SHUTDOWN ON DATABASE
BEGIN
INSERT INTO updown_log(database_name,event_name,event_time,triggered_user) 
   VALUES(sys.database_name,sys.sysevent,sysdate,sys.login_user);
--commit;
END;
/

