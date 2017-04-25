sqlplus / as sysdba
set linesize 999

-- useful for when a tablespace limit is reached

-- first, list all Oracle Database tablespace files:

SELECT FILE_NAME as FNAME, TABLESPACE_NAME as TSPACE,BYTES, AUTOEXTENSIBLE as AUTOEX, MAXBYTES as MAXB,INCREMENT_BY as INC FROM DBA_DATA_FILES;

-- From the above, note the FILE_NAME for the Table Space that needs altered, and use that to do something like this:

ALTER DATABASE DATAFILE ‘{/path to above TS file, eg /ora/path/undotbs_0001.dbf}’ AUTOEXTEND ON NEXT 64m MAXSIZE 2G;
