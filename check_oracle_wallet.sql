-- Check the Oracle Wallet:

-- First, Check to see if encrytion is present:

select * from dba_encrypted_columns;

-- if that brings something back, then you can check the state of the Oracle Wallet:

SELECT status from v$encryption_wallet where status not like ‘OPEN’;
