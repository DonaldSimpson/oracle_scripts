select owner || ‘.’ || object_name || ‘[‘ || object_type || ‘]’
from dba_objects
where status = ‘INVALID’
and object_type != ‘SYNONYM’
and owner in (‘SYSTEM’,’SYS’,’TOOLS’,’DEVUSER’);
