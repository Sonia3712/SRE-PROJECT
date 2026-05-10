-- Post-Migration Validation Queries

-- V1: Row count validation
SELECT COUNT(*) AS total_billing_rows
FROM billing;

-- V2: Null appointment date validation
SELECT COUNT(*) AS null_dates
FROM appointments
WHERE appt_dt IS NULL;

-- V3: Valid appointment statuses
SELECT *
FROM appointments
WHERE status NOT IN ('P','C','X','H','R');

-- V4: Orphan record validation
SELECT *
FROM billing b
LEFT JOIN pat_master p
ON b.pid = p.pid
WHERE p.pid IS NULL;
