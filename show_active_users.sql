SELECT s.osuser, s.status, s.process, s.machine, s.inst_id, s.sid, s.serial#, p.spid, s.username, s.program FROM gv$session s JOIN gv$process p ON p.addr = s.paddr AND p.inst_id = s.inst_id WHERE s.type != ‘BACKGROUND’;
