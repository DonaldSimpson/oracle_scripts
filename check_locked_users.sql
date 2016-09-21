-- Check for locked/locking users:

-- those already locked:

select * from dba_users where username in (‘SYSTEM’,’SYS’,’TOOLS’,’DEVUSER’) and lock_date is not null;

-- or those about to be locked (I add this to my Jenkins Database monitoring jobs so you get some warning…):

select * from dba_users where expiry_date < (trunc(SYSDATE) +7) and lock_date = null;
