
-- Master script to deploy the code

-- Start the spooling process
SPOOL C:\HP\Master_LOG.txt

-- sql files to be executed which stored in C:\HP\

-- Create the tables
@C:\HP\create_tables.sql
PROMPT TABLE CREATED

-- Create the views
@C:\HP\create_views.sql
PROMPT VIEWS CREATED

-- Create the SEQUENCE
@C:\HP\create_seq.sql
PROMPT SEQUENCE CREATED

-- Create the procedures
@C:\HP\create_procedures.sql
PROMPT PROCEDURE CREATED

-- Create the functions
@C:\HP\create_functions.sql
PROMPT FUNCTION CREATED

-- Create the packages
@C:\HP\create_pkg.sql
PROMPT PACKAGE CREATED

-- Insert data into the tables
@C:\HP\insert_data.sql
PROMPT  DATA INSERTED

-- Create the Triggers
@C:\HP\dml_create_triggers.sql
PROMPT TRIGGERS CREATED


-- Stop the spooling process
SPOOL OFF

-- PROMPT - Display message indicating that the query has been executed and the output has been written to the log file
PROMPT Query executed and results written to query_log.txt
