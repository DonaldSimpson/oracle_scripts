-- Check Constraints and Triggers:

SELECT * FROM all_constraints WHERE status <> ‘ENABLED’;

-- or filter by users:

SELECT * FROM all_constraints WHERE owner = ‘ARBOR’ and status <> ‘ENABLED’;

-- Triggers are similar:

select * from all_triggers where status <> ‘ENABLED’;
