/*-----------------------------------------------------------------------------------------------------
	FILE: INSERT_DATA.SQL
	DESCRIPTION: THIS SCRIPT CONTAIN DUMMY DATA
	AUTHOR: SELVA
	DATE CREATED: 25/02/2021
*/-----------------------------------------------------------------------------------------------------

-- Insert data into the tables
INSERT INTO ADMIN VALUES (1,'Shihab', 'Gazipur',01521213853,'sshihabb007@gmail.com',to_date('03-NOV-96','DD-MM-YY'));


INSERT INTO PATIENT VALUES (101,'Tanjir', 'Basundhara','Male' ,to_date('11-APR-95','DD-MM-YY'),01811112233,'In Door', 'Not Released');
INSERT INTO PATIENT VALUES (102,'Arafat', 'Kochukhet','Male' ,to_date('10-JAN-90','DD-MM-YY'),01711804015,'Out Door', 'Not Released');
INSERT INTO PATIENT VALUES (103,'Wrivu', 'Banani','Male' ,to_date('02-DEC-98','DD-MM-YY'),01744338165,'In Door', 'Not Released');
INSERT INTO PATIENT VALUES (104,'Dipto', 'Khilkhet','Male' ,to_date('11-FEB-95','DD-MM-YY'),01933451987,'In Door', 'Not Released');
INSERT INTO PATIENT VALUES (105,'Bijoy', 'Basundhara','Male' ,to_date('07-Feb-97','DD-MM-YY'),01557998877,'Out Door', 'Released');
INSERT INTO PATIENT VALUES (106,'Kawsur', 'Niketon','Male' ,to_date('11-APR-95','DD-MM-YY'),01811112233,'In Door', 'Released');

-----------------------------------------------------------------------------------------------------

INSERT INTO ROOM VALUES(01,'NON AC',1000, 'empty');
INSERT INTO ROOM VALUES(02,'NON AC',1000, 'booked');
INSERT INTO ROOM VALUES(03,'NON AC',1000, 'empty');
INSERT INTO ROOM VALUES(04,'AC',1500, 'empty');
INSERT INTO ROOM VALUES(05,'AC',1500, 'booked');
INSERT INTO ROOM VALUES(06,'AC',1500, 'booked');
INSERT INTO ROOM VALUES(07,'DULEX',2500, 'booked');
INSERT INTO ROOM VALUES(08,'DULEX',2500, 'booked');
INSERT INTO ROOM VALUES(09,'DULEX',2500, 'empty');

-----------------------------------------------------------------------------------------------------

INSERT INTO DOCTOR VALUES (401,'Emer Khan','Dhaka',1811112153,to_date('22-SEP-79','DD-MM-YY'),50000,'M.O');
INSERT INTO DOCTOR VALUES (402,'Helali','Board bazar',01682408748,to_date('18-JAN-90','DD-MM-YY'),40000,'MBBS');
INSERT INTO DOCTOR VALUES (403,'Rezwan','BASUNDHARA',01833458769,to_date('08-FEB-02','DD-MM-YY'),70000,'ASSISTANT PROFESSOR');
INSERT INTO DOCTOR VALUES (404,'Shakib khan','HATIRJHEEL',01833451951,to_date('07-SEP-07','DD-MM-YY'),60000,'M.O');
INSERT INTO DOCTOR VALUES (405,'Sumon','KOCHUKHET',01987962967,to_date('16-JUL-95','DD-MM-YY'),25000,'ASSISTANT SURGEN');

-----------------------------------------------------------------------------------------------------

INSERT INTO NURSE VALUES (501,'Rahima','UTTARA',1811112153,to_date('22-SEP-80','DD-MM-YY'),6000,'JUNIOR NURSE');
INSERT INTO NURSE VALUES (502,'Tamanna','MIRPUR',1822985153,to_date('23-JUN-80','DD-MM-YY'),9000,'SENIOR NURSE');
INSERT INTO NURSE VALUES (503,'PROGGA','BANANI',1787592153,to_date('26-JUL-90','DD-MM-YY'),6000,'JUNIOR NURSE');
INSERT INTO NURSE VALUES (504,'Fatema','Tongi',1515115842,to_date('12-SEP-95','DD-MM-YY'),6000,'JUNIOR NURSE');
INSERT INTO NURSE VALUES (505,'Morzina','BADDA',1887930053,to_date('26-FEB-97','DD-MM-YY'),8000,'SENIOR NURSE');


INSERT INTO RECEPTIONIST VALUES (601,'Sakib','sakibb@gmail.com','UTTARA',1811872153,to_date('21-SEP-80','DD-MM-YY'),5000,'JUNIOR RECEPTIONIST');
INSERT INTO RECEPTIONIST VALUES (602,'Mahmuda','mahmuda007@gmail.com','BADDA',1822089753,to_date('21-JUN-80','DD-MM-YY'),8000,'SENIOR RECEPTIONIST');
INSERT INTO RECEPTIONIST VALUES (603,'TARIQUR','tariqur@gmail.com','BANANI',1701112153,to_date('21-JUL-90','DD-MM-YY'),5000,'JUNIOR RECEPTIONIST');
INSERT INTO RECEPTIONIST VALUES (604,'TANVIR','tanvir@gmail.com','GULSHAN',1515112153,to_date('01-SEP-95','DD-MM-YY'),5000,'JUNIOR RECEPTIONIST');
INSERT INTO RECEPTIONIST VALUES (605,'ANIKA','anika@gmail.com','BADDA',1811100053,to_date('21-FEB-98','DD-MM-YY'),8000,'SENIOR RECEPTIONIST');


INSERT INTO USER_TYPE VALUES (701, 601,'RECEPTIONIST','sakibb@gmail.com','123456');
INSERT INTO USER_TYPE VALUES (702, 602,'RECEPTIONIST','mahmuda007@gmail.com','123456');
INSERT INTO USER_TYPE VALUES (703, 603,'RECEPTIONIST','tariqur@gmail.com','123456');
INSERT INTO USER_TYPE VALUES (704, 604,'RECEPTIONIST','tanvir@gmail.com','123456'); 
INSERT INTO USER_TYPE VALUES (705, 605,'RECEPTIONIST','anika@gmail.com','123456');
INSERT INTO USER_TYPE VALUES (706, 1,'ADMIN','sshihabb007@gmail.com','123456');


INSERT INTO ASSIGNED_ROOM VALUES (801,101,5);
INSERT INTO ASSIGNED_ROOM VALUES (802,103,6);
INSERT INTO ASSIGNED_ROOM VALUES (803,104,7);
INSERT INTO ASSIGNED_ROOM VALUES (804,106,8);
INSERT INTO ASSIGNED_ROOM VALUES (805,107,2);


INSERT INTO ASSIST_PATIENT VALUES (901,106,601);
INSERT INTO ASSIST_PATIENT VALUES (902,101,601);
INSERT INTO ASSIST_PATIENT VALUES (903,107,602);
INSERT INTO ASSIST_PATIENT VALUES (904,103,603);
INSERT INTO ASSIST_PATIENT VALUES (905,105,604);
INSERT INTO ASSIST_PATIENT VALUES (906,102,605);
INSERT INTO ASSIST_PATIENT VALUES (907,104,604);


INSERT INTO  GOVERNS_ROOM VALUES (201,501,1);
INSERT INTO  GOVERNS_ROOM VALUES (202,502,2);
INSERT INTO  GOVERNS_ROOM VALUES (203,503,3);
INSERT INTO  GOVERNS_ROOM VALUES (204,502,4);
INSERT INTO  GOVERNS_ROOM VALUES (205,503,5);
INSERT INTO  GOVERNS_ROOM VALUES (206,504,6);
INSERT INTO  GOVERNS_ROOM VALUES (207,505,7);
INSERT INTO  GOVERNS_ROOM VALUES (208,505,8);
INSERT INTO  GOVERNS_ROOM VALUES (209,503,9);


INSERT INTO ATTEND_PATIENT VALUES (1001,106,301);
INSERT INTO ATTEND_PATIENT VALUES (1002,101,301);
INSERT INTO ATTEND_PATIENT VALUES (1003,107,302);
INSERT INTO ATTEND_PATIENT VALUES (1004,103,303);
INSERT INTO ATTEND_PATIENT VALUES (1005,105,304);
INSERT INTO ATTEND_PATIENT VALUES (1006,102,305);

