/*-----------------------------------------------------------------------------------------------------
	FILE: DML_CREATE_TRIGGERS.SQL
	DESCRIPTION: THIS SCRIPT CONTAIN DML TRIGGERS
	AUTHOR: SELVA
	DATE CREATED: 22/02/2021
*/-----------------------------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER PATIENT_LOG
AFTER INSERT ON PATIENT 
REFERENCING OLD AS OLD NEW AS NEW 
FOR EACH ROW
BEGIN
    INSERT INTO LOG_PATIENT(PATIENT_ID,ADMIT_DATE) VALUES(:NEW.P_ID,SYSDATE);
END;
