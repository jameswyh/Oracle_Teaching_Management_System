CREATE SMALLFILE TABLESPACE Tbs_art_fash_busi 
DATAFILE
'C:\app\james_000\oradata\EnterDB\Tbs_art_fash_busi1.ora' SIZE 100M 
AUTOEXTEND ON 
NEXT 10M 
MAXSIZE UNLIMITED,
'C:\app\james_000\oradata\EnterDB\Tbs_art_fash_busi2.ora' SIZE 100M 
AUTOEXTEND ON 
NEXT 10M 
MAXSIZE UNLIMITED 
LOGGING 
EXTENT MANAGEMENT LOCAL 
SEGMENT SPACE MANAGEMENT AUTO
/

