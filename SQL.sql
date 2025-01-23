CREATE TABLE BRANCHID(
    BRANCHHEADID NUMBER(4),
    NAME VARCHAR(50),
    CONTACT NUMBER(10)
);
INSERT INTO BRANCHID VALUES(101,'Aarav Desai ',8615153531);
INSERT INTO BRANCHID VALUES(103,'Vikram Sethi ',7135184877);
INSERT INTO BRANCHID VALUES(105,'Nandini Reddy  ',7151848488);
INSERT INTO BRANCHID VALUES(107,'Aryan Sharma ',9315184848);
INSERT INTO BRANCHID VALUES(109,'Rohit Verma ',8133158484);
--INSERT INTO BRANCHID VALUES(101,'Aarav Desai ',8615153531);
SELECT * FROM BRANCHID;
ALTER TABLE BRANCHID ADD PRIMARY KEY(BRANCHHEADID);
CREATE TABLE BRANCH( 
    BranchID NUMBER(5) PRIMARY KEY, 
    BranchName VARCHAR(50) NOT NULL, 
    BranchHeadID NUMBER(4) REFERENCES BRANCHID(BRANCHHEADID) ON DELETE SET NULL, 
    City VARCHAR(50) NOT NULL 
);
insert into BRANCH values (001, 'Auto Excellence', 101, 'Patiala');
insert into BRANCH values (002, 'Champion Auto Sales', 103, 'Amritsar');
insert into BRANCH values (003, 'Highway Heroes', 105, 'Chandigarh');
insert into BRANCH values (004, 'Prestige Motors', 107, 'Jalandhar');
insert into BRANCH values (005, 'MotorMasters', 109, 'Ludhiana');
SELECT * FROM BRANCH;

CREATE TABLE EMPLOYEE( 
    EmpNo number(4) PRIMARY KEY, 
    Name varchar(50) NOT NULL, 
    BranchID number(5) references BRANCH ON DELETE SET NULL, 
    Status varchar(20) NOT NULL, 
    Contact_No number(10) NOT NULL, 
    Salary number(10) NOT NULL, 
    Address varchar(60) NOT NULL 
);
insert into EMPLOYEE values (101, 'Aarav Desai', 001, 'Manager', 8615153531, 120000, 'GTB NAGAR');
insert into EMPLOYEE values (102, 'Kabir Verma', 001, 'Agent', 7135184877, 140000, 'MODEL TOWN');
insert into EMPLOYEE values (103, 'Vikram Sethi', 002, 'Manager', 9051848484, 155000, 'PUDA COLONY');
insert into EMPLOYEE values (104, 'Priya Chatterjee', 002, 'Agent', 9153884844, 192000, 'GREEN AVENUE');
insert into EMPLOYEE values (105, 'Nandini Reddy', 003, 'Manager', 7151848488, 125000, 'SHALIMAR BAGH');
insert into EMPLOYEE values (106, 'Arjun Khanna', 003, 'Agent', 8155848484, 160000, 'SECTOR 17');
insert into EMPLOYEE values (107, 'Aryan Sharma', 004, 'Manager', 9315184848, 185000, 'GERMANY DASS PARK');
insert into EMPLOYEE values (108, 'Meera Patel', 004, 'Agent', 7121584848, 165000, 'AJIT NAGAR');
insert into EMPLOYEE values (109, 'Rohit Verma', 005, 'Manager', 8133158484, 170000, 'AMRIT BAZAR');
insert into EMPLOYEE values (110, 'Devika Kapoor', 005, 'Agent', 9154848484, 135000, 'PREM NAGAR');
SELECT * FROM EMPLOYEE;

CREATE TABLE CUSTOMER(
    UserID number(6) PRIMARY KEY, 
    Name varchar(50) NOT NULL, 
    Contact_No number(15) NOT NULL
);
insert into CUSTOMER values (001, 'Anil Sharma', 7351658484);
insert into CUSTOMER values (002, 'Rishi Gupta', 8153415341);
insert into CUSTOMER values (003, 'Neha Raja', 9151824784);
insert into CUSTOMER values (004, 'Advik Bhatia', 7165684888);
insert into CUSTOMER values (005, 'Anjali Jain', 7684848488);
insert into CUSTOMER values (006, 'Kavita Sharma', 9134844844);
insert into CUSTOMER values (007, 'Meera Desai', 8121321515);
insert into CUSTOMER values (008, 'Rohan Kapoor', 8112151544);
insert into CUSTOMER values (009, 'Ayan Malhotra', 6818546848);
insert into CUSTOMER values (10, 'Alisha Kapoor', 6447451515);
insert into CUSTOMER values (11, 'Pooja Sharma', 9135488887);
insert into CUSTOMER values (12, 'Mukesh Gupta', 8451536874);
insert into CUSTOMER values (13, 'Mukul Bhandari', 6156684643);
insert into CUSTOMER values (14, 'Devika Sinha', 7134654344);
insert into CUSTOMER values (15, 'Rashmi Kanna', 7813445554);

SELECT * FROM CUSTOMER;

CREATE TABLE VEHICLE(
    VID number(10) PRIMARY KEY, 
    Company varchar(30) NOT NULL, 
    Model varchar(10) NOT NULL, 
    ManfYEAR number(4) NOT NULL, 
    Cost number(10) NOT NULL, 
    FuelType varchar(20) NOT NULL, 
    Seats number(2) NOT NULL,
    Color varchar(10) NOT NULL,
    BranchID number(5) references BRANCH(BranchID) ON DELETE SET NULL
);
ALTER TABLE VEHICLE MODIFY MODEL VARCHAR(20);
insert into VEHICLE values (001, 'Chevrolet', 'Express 1500', 2024, 2164248, 'Gas', 6, 'Black', 001);
insert into VEHICLE values (002, 'Volkswagen', 'Type 2', 2021, 3542663, 'ethanol', 7, 'Blue', 002);
insert into VEHICLE values (003, 'Volkswagen', 'Touareg', 2022, 2303701, 'Diesel', 4, 'Red', 001);
insert into VEHICLE values (004, 'GMC', 'Terrain', 2024, 3817420, 'Gasoline', 4, 'White', 003);
insert into VEHICLE values (005, 'Audi', 'TT', 2021, 1953502, 'Petrol', 3, 'Grey', 003);
insert into VEHICLE values (006, 'Acura', 'RDX', 2023, 2430193, 'Gasoline', 2, 'Black', 004);
insert into VEHICLE values (007, 'Mercedes-Benz', '600SL', 2024, 3431352, 'Petrol', 2, 'Black', 002);
insert into VEHICLE values (008, 'Ford', 'Explorer', 2022, 2110079, 'Gasoline', 5, 'Blue', 001);
insert into VEHICLE values (009, 'Mercedes-Benz', 'SLR McLaren', 2023, 2907055, 'Petrol', 6, 'Grey', 005);
insert into VEHICLE values (010, 'BMW', '530', 2024, 3936155, 'Gasoline', 3, 'White', 003);
insert into VEHICLE values (011, 'Mitsubishi', 'Outlander', 2022, 3716526, 'Gasoline', 2, 'White', 001);
insert into VEHICLE values (012, 'Pontiac', 'Grand Prix', 2023, 3539152, 'Gasoline', 7, 'Black', 004);
insert into VEHICLE values (013, 'Mitsubishi', 'Mirage', 2023, 1547972, 'Petrol', 5, 'Grey', 002);
insert into VEHICLE values (014, 'Mitsubishi', 'Eclipse', 2023, 2721129, 'Gasoline', 5, 'Red', 005);
insert into VEHICLE values (015, 'Mazda', '626', 2020, 2074225, 'Petrol', 6, 'Grey', 004);
insert into VEHICLE values (016, 'Volkswagen', 'Golf', 2022, 3903788, 'Petrol', 6, 'Blue', 002);
insert into VEHICLE values (017, 'Infiniti', 'FX', 2020, 3909016, 'Diesel', 7, 'White',003);
insert into VEHICLE values (018, 'Mercury', 'Capri', 2024, 3368129, 'Gasoline', 3, 'Red', 005);
insert into VEHICLE values (019, 'GMC', '2500 Club Coupe', 2020, 892143, 'Gas', 3, 'Red', 001);
insert into VEHICLE values (021, 'Ford', 'Ranger', 2020, 1825602, 'Gasoline', 7, 'Black', 003);
insert into VEHICLE values (022, 'Ford', 'F150', 2022, 3550197, 'Gasoline', 2, 'Grey', 004);
insert into VEHICLE values (023, 'Ford', 'Econoline E350', 2022, 1241573, 'Gas', 5, 'Black', 002);
insert into VEHICLE values (024, 'Mitsubishi', 'Truck', 2020, 1982903, 'Diesel', 5, 'White', 002);
insert into VEHICLE values (025, 'Chrysler', 'Concorde', 2024, 3944353, 'Gasoline', 6, 'Grey', 001);
insert into VEHICLE values (026, 'Dodge', 'Ram 2500', 2020, 1377746, 'Diesel', 3, 'Black', 003);
insert into VEHICLE values (027, 'Audi', 'S4', 2024, 3248671, 'Petrol', 4, 'Blue', 005);
insert into VEHICLE values (028, 'Land Rover', 'LR2', 2024, 2074414, 'Gas', 5, 'White', 005);
insert into VEHICLE values (029, 'BMW', '3 Series', 2020, 1342045, 'Gasoline', 6, 'White', 001);
insert into VEHICLE values (030, 'Ford', 'Ranger', 2020, 964730, 'Gasoline', 2, 'Grey', 002);
insert into VEHICLE values (031, 'Acura', 'NSX', 2022, 1438943, 'Gas', 3, 'Red', 004);
insert into VEHICLE values (032, 'Mercury', 'Sable', 2023, 1900621, 'Gas', 2, 'Black', 003);
insert into VEHICLE values (033, 'Audi', 'A4', 2020, 2689386, 'Petrol', 5, 'Blue', 001);
insert into VEHICLE values (034, 'Tesla', 'Model S', 2024, 3060655, 'Electric', 7, 'Red', 005);
insert into VEHICLE values (035, 'Honda', 'del Sol', 2022, 735258, 'Petrol', 4, 'Red', 001);

SELECT * FROM VEHICLE;
--DELETE FROM VEHICLE

CREATE TABLE INSURANCE (
  InsID NUMBER(10) PRIMARY KEY,
  "StartDate" TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
  "EndDate" TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
  Company VARCHAR2(50) NOT NULL,
  Cost NUMBER(10) NOT NULL
);

INSERT INTO INSURANCE VALUES (
  1,
  TO_DATE('1/4/2024', 'DD/MM/YYYY'), 
  TO_DATE('31/3/2025', 'DD/MM/YYYY'),
  'Oriental Insurance',
  14500
);

INSERT INTO INSURANCE VALUES (
  2,
  TO_DATE('1/4/2024', 'DD/MM/YYYY'),
  TO_DATE('31/3/2025', 'DD/MM/YYYY'), 
  'Bajaj Allianz Insurance',
  17000
);

INSERT INTO INSURANCE VALUES (
  3,
  TO_DATE('1/7/2024', 'DD/MM/YYYY'),
  TO_DATE('30/6/2025', 'DD/MM/YYYY'), 
  'Star Insurance',
  16000
);
INSERT INTO INSURANCE VALUES (
  4,
  TO_DATE('1/4/2024', 'DD/MM/YYYY'),
  TO_DATE('31/3/2025', 'DD/MM/YYYY'), 
  'Oriental Insurance',
  14500
);

INSERT INTO INSURANCE VALUES (
  5,
  TO_DATE('1/4/2024', 'DD/MM/YYYY'), 
  TO_DATE('30/6/2025', 'DD/MM/YYYY'), 
  'Bajaj Allianz Insurance',
  17000
);
SELECT * FROM INSURANCE;

CREATE TABLE ACCESSORY( 
    AccsID int PRIMARY KEY, 
    Name varchar(30) NOT NULL, 
    Color varchar(20), 
    Quantity int NOT NULL, 
    Cost int NOT NULL
);
insert into ACCESSORY values (1, 'Floor mats', 'Black', 20, 2500);
insert into ACCESSORY values (2, 'Seat covers', 'Any', 25, 7000);
insert into ACCESSORY values (3, 'Sun shades', 'Black', 15, 1200);
insert into ACCESSORY values (4, 'Alloy wheel', 'Silver', 10, 7300);
insert into ACCESSORY values (5, 'Dash camera', NULL, 9, 4500);
insert into ACCESSORY values (6, 'Neck support', 'Any', 10, 950);
insert into ACCESSORY values (7, 'Universal charger', 'Black', 30, 1200);
insert into ACCESSORY values (8, 'Mud flaps', 'Black', 10, 1100);
insert into ACCESSORY values (9, 'Phone mount', 'White', 20, 650);
insert into ACCESSORY values (10, 'Parking camera', NULL, 15, 2500);
insert into ACCESSORY values (11, 'Roof basket', 'Silver', 15, 22000);
SELECT * FROM ACCESSORY;

CREATE TABLE SOLD(
  S_No number(5) PRIMARY KEY,
  UserID number(5) references CUSTOMER(UserID) ON DELETE SET NULL,
  VID number(5) references VEHICLE(VID) ON DELETE SET NULL,
  InsID number(5) references INSURANCE(InsID) ON DELETE SET NULL
);
insert into SOLD values (1, 2, 032, NULL);
insert into SOLD values (2, 4, 025, 2);
insert into SOLD values (3, 9, 016, 4);
insert into SOLD values (4, 14, NULL, NULL);
insert into SOLD values (5, 6, 002, 1);
insert into SOLD values (6, 4, 006, 2);
insert into SOLD values (7, 15, 029, 5);
insert into SOLD values (8, 1, 022, 2);
insert into SOLD values (9, 14, NULL, NULL);
insert into SOLD values (10, 10, 035, 4);
insert into SOLD values (11, 13, 019, 3);
insert into SOLD values (12, 3, 009, 3);
insert into SOLD values (13, 5, NULL, NULL);
insert into SOLD values (14, 11, 013, 1);
insert into SOLD values (15, 12, 024, 5);
insert into SOLD values (16, 7, 027, NULL);
insert into SOLD values (17, 8, NULL, NULL);
SELECT * FROM SOLD;
UPDATE SOLD SET VID=001WHERE S_No = 17;

CREATE TABLE SOLD_ACCS(
  S_No number(5) references SOLD( S_No) ON DELETE SET NULL,
  AccsID number(5) references ACCESSORY(AccsID) ON DELETE SET NULL,
    CNUMBER NUMBER(5) references CUSTOMER(UserId) on DELETE SET NULL,
  PRIMARY KEY(S_No, AccsID)
);
insert into SOLD_ACCS values (2, 1,5);
insert into SOLD_ACCS values (2, 4,8);
insert into SOLD_ACCS values (3, 5,10);
insert into SOLD_ACCS values (4, 2,4);
insert into SOLD_ACCS values (4, 3,3);
insert into SOLD_ACCS values (6, 11,1);
insert into SOLD_ACCS values (6, 2,2);
insert into SOLD_ACCS values (6, 5,7);
insert into SOLD_ACCS values (6, 6,6);
insert into SOLD_ACCS values (7, 4,4);
insert into SOLD_ACCS values (7, 6,4);
insert into SOLD_ACCS values (8, 7,1);
insert into SOLD_ACCS values (8, 8,4);
insert into SOLD_ACCS values (8, 6,3);
insert into SOLD_ACCS values (9, 10,4);
insert into SOLD_ACCS values (10, 11,5);
insert into SOLD_ACCS values (10, 9,1);
insert into SOLD_ACCS values (10, 1,2);
insert into SOLD_ACCS values (11, 6,8);
insert into SOLD_ACCS values (11, 5,9);
insert into SOLD_ACCS values (12, 2,10);
insert into SOLD_ACCS values (12, 4,1);
insert into SOLD_ACCS values (12, 6,1);
insert into SOLD_ACCS values (13, 5,1);
insert into SOLD_ACCS values (13, 7,5);
insert into SOLD_ACCS values (14, 10,2);
insert into SOLD_ACCS values (14, 4,2);
insert into SOLD_ACCS values (15, 6,4);
insert into SOLD_ACCS values (16, 1,8);
insert into SOLD_ACCS values (17, 1,9);
insert into SOLD_ACCS values (17, 6,5);
insert into SOLD_ACCS values (17,11,9);
SELECT * FROM SOLD_ACCS;

--1

DECLARE
CURSOR C1 IS SELECT * FROM VEHICLE;
BEGIN

FOR REC IN C1 LOOP
	DBMS_OUTPUT.PUT_LINE(' V-ID -> '||REC.VID||' COMPANY IS '||REC.COMPANY||' MODEL IS -> '||REC.MODEL||' COST IS --> '||REC.COST);
END LOOP;
END;


--2
CREATE OR REPLACE TRIGGER CHECK_NUMBER
BEFORE INSERT OR UPDATE
ON CUSTOMER
FOR EACH ROW
DECLARE
INVALID_PHONE_NUMBER EXCEPTION;
BEGIN
 	IF LENGTH(:NEW.Contact_no) <> 10 THEN
	RAISE INVALID_PHONE_NUMBER;
END IF;
EXCEPTION
		WHEN INVALID_PHONE_NUMBER THEN
		RAISE_APPLICATION_ERROR(-20001,' PHONE NUMBER MUST BE OF 10 DIGITS LONG ');
END;
INSERT INTO CUSTOMER VALUES(011,'SUVIT',904154926);
-- SAME CAN BE IMPLEMENTED FOR THE OTHER TABLES WHERE WE USE THE PHONE NUMBER


--3

DECLARE 
    CURSOR C1 IS SELECT COUNT(*) FROM EMPLOYEE WHERE Status = 'Manager';
    TOTAL NUMBER;
    M_NU NUMBER;
BEGIN
    SELECT COUNT(*) INTO TOTAL FROM EMPLOYEE;
    OPEN C1;
    FETCH C1 INTO M_NU;
    DBMS_OUTPUT.PUT_LINE('THE NUMBER OF MANAGERS ARE ' || M_NU || ', NUMBER OF AGENTS ARE ' || (TOTAL - M_NU));
    CLOSE C1;
END;



--4
DECLARE 
    CURSOR C1 IS SELECT * FROM SOLD WHERE InsID IS NULL;
    UserID SOLD.UserID%TYPE; 
BEGIN
    FOR REC IN C1 LOOP
        
       UserID := REC.UserID;
        
        DBMS_OUTPUT.PUT_LINE('THE VEHICLE WITH VEHICLE ID ' || REC.VID || ' IS NOT INSURED AND BELONGS TO CUSTOMER WITH CUSTOMER ID ' || REC.UserID);
    END LOOP;
END;
--5
CREATE OR REPLACE PROCEDURE DELETE_EXPIRED_INSURANCE_RECORDS AS
    CURR_DATE TIMESTAMP WITH LOCAL TIME ZONE;
BEGIN
    -- Get the current date
    CURR_DATE := SYSTIMESTAMP;

    -- Iterate through expired records
    FOR REC IN (SELECT * FROM INSURANCE WHERE "EndDate" < CURR_DATE) LOOP
        -- Display information about the expired record
        DBMS_OUTPUT.PUT_LINE('ALERT: Insurance for Policy ID ' || REC.InsID || ' has expired and will be deleted!');

        -- Delete the expired record
        DELETE FROM INSURANCE WHERE InsID = REC.InsID;
    END LOOP;
END;
INSERT INTO INSURANCE VALUES (
  6,
  TO_DATE('1/4/2023', 'DD/MM/YYYY'),
  TO_DATE('31/3/2024', 'DD/MM/YYYY'), 
  'Bajaj Allianz Insurance',
  17000
);
EXECUTE DELETE_EXPIRED_INSURANCE_RECORDS;
--6

SELECT V.Model, A.Name AS Accessory_Name
FROM VEHICLE V
JOIN SOLD S ON V.VID = S.VID
JOIN SOLD_ACCS SA ON S.S_No = SA.S_No
JOIN ACCESSORY A ON SA.AccsID = A.AccsID;
--7
SELECT S.S_No, V.Model, COUNT(SA.AccsID) AS Total_Accessories_Sold
FROM SOLD S
JOIN VEHICLE V ON S.VID = V.VID
LEFT JOIN SOLD_ACCS SA ON S.S_No = SA.S_No
GROUP BY S.S_No, V.Model;
--8
SELECT B.BranchName, BH.NAME AS Branch_Head, BH.CONTACT AS Branch_Head_Contact
FROM BRANCH B
LEFT JOIN BRANCHID BH ON B.BranchHeadID = BH.BRANCHHEADID;
--9
SELECT S.S_No, V.Model, SUM(I.Cost) AS Total_Insurance_Cost
FROM SOLD S
JOIN VEHICLE V ON S.VID = V.VID
LEFT JOIN INSURANCE I ON S.InsID = I.InsID
GROUP BY S.S_No, V.Model;
--10
SELECT E.Name AS Employee_Name, B.BranchName AS Branch_Name
FROM EMPLOYEE E
LEFT JOIN BRANCH B ON E.BranchID = B.BranchID;

--11
CREATE OR REPLACE PROCEDURE DELETE_SOLD_VEHICLE(S_No IN NUMBER) AS
BEGIN
    DELETE FROM SOLD WHERE S_No = DELETE_SOLD_VEHICLE.S_No;
    DBMS_OUTPUT.PUT_LINE('Sold vehicle record deleted successfully.');
END;
execute DELETE_SOLD_VEHICLE(5);
--12
CREATE OR REPLACE FUNCTION CALCULATE_TOTAL_ACCESSORY_COST(S_No IN NUMBER) RETURN NUMBER AS
    Total_Cost NUMBER := 0;
BEGIN
    SELECT SUM(A.Cost)
    INTO Total_Cost
    FROM SOLD_ACCS SA
    JOIN ACCESSORY A ON SA.AccsID = A.AccsID
    WHERE SA.S_No = CALCULATE_TOTAL_ACCESSORY_COST.S_No;

    RETURN Total_Cost;
END;
BEGIN
DBMS_OUTPUT.PUT_LINE(' TOTAL COST IS '||CALCULATE_TOTAL_ACCESSORY_COST(4));
END;
--13
SELECT DISTINCT C.Name
FROM CUSTOMER C
JOIN SOLD S ON C.UserID = S.UserID
JOIN VEHICLE V ON S.VID = V.VID
WHERE V.Cost > 50000;
--14
SELECT V.FuelType, COUNT(*) AS Total_Vehicles_Sold
FROM VEHICLE V
JOIN SOLD S ON V.VID = S.VID
GROUP BY V.FuelType;

--15
SELECT DISTINCT C.Name
FROM CUSTOMER C
JOIN SOLD S ON C.UserID = S.UserID
JOIN VEHICLE V ON S.VID = V.VID
WHERE V.Model = 'Corolla';
--16
CREATE OR REPLACE TRIGGER UPDATE_BRANCH_HEAD_CONTACT
AFTER UPDATE OF CONTACT ON BRANCHID
FOR EACH ROW
BEGIN
    UPDATE BRANCH
    SET BranchHeadID = :NEW.BRANCHHEADID
    WHERE BranchHeadID = :OLD.BRANCHHEADID;
    DBMS_OUTPUT.PUT_LINE('Branch head contact updated successfully.');
END;

INSERT INTO BRANCHID (BRANCHHEADID, NAME, CONTACT) VALUES (152, 'John Doe', 1234567890);
delete from BRANCHID WHERE BRANCHHEADID=152;
UPDATE BRANCHID
SET CONTACT = 9876543210
WHERE BRANCHHEADID = 101;

--17
CREATE OR REPLACE PROCEDURE INSERT_BRANCH_WITH_HEAD(
    p_BranchName IN VARCHAR2,
    p_BranchHeadName IN VARCHAR2,
    p_BranchHeadContact IN NUMBER,
    p_City IN VARCHAR2
) AS
    l_BranchID NUMBER;
BEGIN
    INSERT INTO BRANCHID (BRANCHHEADID, NAME, CONTACT) 
    VALUES (NULL, p_BranchHeadName, p_BranchHeadContact)
    RETURNING BRANCHHEADID INTO l_BranchID;

    INSERT INTO BRANCH (BranchID, BranchName, BranchHeadID, City) 
    VALUES (l_BranchID, p_BranchName, l_BranchID, p_City);
    
    DBMS_OUTPUT.PUT_LINE('New branch record inserted successfully.');
END;
EXECUTE INSERT_BRANCH_WITH_HEAD;