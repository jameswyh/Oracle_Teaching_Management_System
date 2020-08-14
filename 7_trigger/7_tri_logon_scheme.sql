CREATE OR REPLACE TRIGGER tri_logon_scheme
AFTER LOGON ON staffuser.schema
BEGIN
   INSERT INTO db_log_event (user_name, ip_address, logon_date)
   VALUES (ora_login_user, ora_client_ip_address, systimestamp);
END tri_logon_scheme;
/

SELECT * FROM db_log_event;


