/*-----------------------------------------------------------------------------------------------------
	FILE: CREATE_VIEWS.SQL
	DESCRIPTION: THIS SCRIPT CONTAIN VIEWS
	AUTHOR: SELVA
	DATE CREATED: 12/02/2021
*/-----------------------------------------------------------------------------------------------------


CREATE OR REPLACE FORCE VIEW "PATIENT_VIEW" ("P_ID", "P_NAME", "P_ADDRESS", "P_GENDER", "P_DOB", "P_CONTACT_NO", "P_STATUS", "P_CONDITION", "ADMIT_DATE", "RELEASE_DATE") AS
SELECT P."P_ID",P."P_NAME",P."P_ADDRESS",P."P_GENDER",P."P_DOB",P."P_CONTACT_NO",P."P_STATUS",P."P_CONDITION",L.ADMIT_DATE,L.RELEASE_DATE
FROM PATIENT P,LOG_PATIENT L
WHERE P.P_ID=L.PATIENT_ID;
----------------------------------------------------------------------------------------------

CREATE OR REPLACE FORCE VIEW ASSIST_PATIENT_VIEW("P_ID", "P_NAME", "R_ID", "R_NAME") AS 
SELECT P.P_ID,P_NAME,R.R_ID,R_NAME 
FROM PATIENT P,RECEPTIONIST R,ASSIST_PATIENT A
WHERE P.P_ID=A.P_ID AND R.R_ID=A.R_ID;

----------------------------------------------------------------------------------------------

CREATE OR REPLACE FORCE VIEW PATIENT_ROOM_VIEW("P_ID", "P_NAME", "P_ADDRESS", "P_GENDER", "P_DOB", "P_CONTACT_NO", "P_STATUS", "P_CONDITION", "ROOM_NO") AS 
select P."P_ID",P."P_NAME",P."P_ADDRESS",P."P_GENDER",P."P_DOB",P."P_CONTACT_NO",P."P_STATUS",P."P_CONDITION", AR.ROOM_NO 
from PATIENT P,ASSIGNED_ROOM AR 
where P.P_ID=AR.P_ID AND P.P_CONDITION='Not Released';

----------------------------------------------------------------------------------------------

CREATE OR REPLACE FORCE VIEW LOGIN_VIEW_REC("U_TYPE", "LOGIN_DATE", "R_NAME", "R_ID") AS 
SELECT U.U_TYPE,L.LOGIN_DATE,R.R_NAME,R_ID    
FROM USER_TYPE U,LOGIN_INFO L,RECEPTIONIST R
WHERE U.ID=L.LOGGED_PERSON AND U.ID=R.R_ID AND L.LOGGED_PERSON=R.R_ID;

----------------------------------------------------------------------------------------------

CREATE OR REPLACE FORCE VIEW LOGIN_VIEW_ADMIN("U_TYPE", "LOGIN_DATE", "ADMIN_NAME") AS 
SELECT U.U_TYPE,L.LOGIN_DATE,A.ADMIN_NAME    
FROM USER_TYPE U,LOGIN_INFO L,ADMIN A
WHERE U.ID=L.LOGGED_PERSON  AND U.ID=A.ADMIN_ID  AND L.LOGGED_PERSON=A.ADMIN_ID;

