create or replace trigger tri_logout_user
before logoff on database
Begin update user_login_log
set login_off_time = sysdate
where session_id = USERENV('SESSIONID');
END; 
/


select*from user_login_log;