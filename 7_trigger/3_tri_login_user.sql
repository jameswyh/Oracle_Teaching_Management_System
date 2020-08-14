create or replace trigger tri_login_user
after logon on database
Begin insert into  user_login_log
(session_id,login_on_time,login_off_time,user_in_db£¬machine,ip_address,run_program)
select AUDSID,sysdate,null,sys.login_user,machine,SYS_CONTEXT('USERENV','IP_ADDRESS'),program from v$session 
where AUDSID = USERENV('SESSIONID');
END; 
/


select*from user_login_log;
