Create or replace trigger tri_aud_sche_operation
AFTER alter or create or drop on staffuser.SCHEMA
BEGIN
INSERT INTO db_scheme_activities(object_owner,object_name,object_type,altered_by_user,alteration_time)
VALUES(sys.dictionary_obj_owner,sys.dictionary_obj_name,sys.dictionary_obj_type,sys.login_user,sysdate);
END;
/

select*from db_scheme_activities;


