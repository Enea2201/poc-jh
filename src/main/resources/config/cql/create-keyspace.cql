CREATE KEYSPACE IF NOT EXISTS poc
    WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 }
    AND DURABLE_WRITES = true;

CREATE TABLE IF NOT EXISTS poc.schema_version (
    script_name text,
    checksum text,
    executed_by text,
    executed_on timestamp,
    execution_time int,
    status text,
    PRIMARY KEY(script_name)
);
