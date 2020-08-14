CREATE OR REPLACE TRIGGER tri_startup_db
AFTER STARTUP ON DATABASE
BEGIN
INSERT INTO updown_log(database_name,event_name,event_time,triggered_user) 
   VALUES(sys.database_name,sys.sysevent,sysdate,sys.login_user);
END;
/

select*from updown_log;
