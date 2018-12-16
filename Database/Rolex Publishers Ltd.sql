CREATE DATABASE IF NOT EXISTS Hotel_Reservation_System DEFAULT CHARACTER SET utf8;

USE Hotel_Reservation_System;

CREATE TABLE Guests
 (
Guest_ID int(11) NOT NULL,
Guest_Name varchar(30) DEFAULT NULL,
Num_Adults int(11) DEFAULT NULL,
Num_Children int(11) DEFAULT NULL,
  PRIMARY KEY (Guest_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Agent 
(
  Agent_ID varchar(30) NOT NULL,
 Agent_Name varchar(30) DEFAULT NULL,
 PRIMARY KEY (Agent_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Country
 (
Country_Code varchar(30) NOT NULL,
Country_Currency varchar(45) DEFAULT NULL,
Country_Name varchar(45) DEFAULT NULL,
PRIMARY KEY (Country_Code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Hotels (
Hotel_ID varchar(45) NOT NULL,
Country_Code varchar(30) DEFAULT NULL,
Star_Rating int(11) DEFAULT NULL,
Hotel_Name varchar(45) DEFAULT NULL,
Hotel_Email varchar(45) DEFAULT NULL,
Hotel_Address varchar(45) DEFAULT NULL,
Hotel_City varchar(45) DEFAULT NULL,
Hotel_PostCode int(11) DEFAULT NULL,
Hotel_URL varchar(45) DEFAULT NULL,
Other_Hotel_Details varchar(45) DEFAULT NULL,
PRIMARY KEY (Hotel_ID),
KEY Country_Code (Country_Code),
CONSTRAINT Country_Code FOREIGN KEY (Country_Code) REFERENCES Country (Country_Code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Agent_Reservation
 (
  Agent_Reservation_ID varchar(30) NOT NULL,
  Agent_ID varchar(30) DEFAULT NULL,
  Guest_Count int(11) DEFAULT NULL,
  Agent_Reservation_Date date DEFAULT NULL,
  PRIMARY KEY (Agent_Reservation_ID),
  KEY Agent_ID (Agent_ID),
  CONSTRAINT Agent_ID FOREIGN KEY (Agent_ID) REFERENCES agent (Agent_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Booking_Status 
(
  Booking_Status_Code int(11) NOT NULL,
  Booking_Status varchar(30) DEFAULT NULL,
  Booking_Status_Description varchar(45) DEFAULT NULL,
  PRIMARY KEY (Booking_Status_Code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE Hotel_Characteristic
 (
  Characteristic_Code varchar(30) NOT NULL,
  Characteristic_Code_Desc varchar(45) DEFAULT NULL,
  PRIMARY KEY (Characteristic_Code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE Room_Types (
  Room_Type_Code varchar(30) NOT NULL,
  Room_Standard_Rate int(11) DEFAULT NULL,
  Room_Type_Description varchar(45) DEFAULT NULL,
  PRIMARY KEY (Room_Type_Code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Rooms
 (
  Room_Number int(11) NOT NULL,
  Hotel_ID varchar(45) NOT NULL,
  Room_Floor int(11) DEFAULT NULL,
  Room_Type_Code varchar(30) DEFAULT NULL,
  Room_Actual_Rate int(11) DEFAULT NULL,
  PRIMARY KEY (Room_Number),
  KEY Hotel_ID (Hotel_ID),
  KEY Room_Type_Code (Room_Type_Code),
  CONSTRAINT rooms_ibfk_1 FOREIGN KEY (Hotel_ID) REFERENCES Hotels (Hotel_ID),
  CONSTRAINT rooms_ibfk_2 FOREIGN KEY (Room_Type_Code) REFERENCES Room_Types (Room_Type_Code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE Room_Availability
 (
  Hotel_ID varchar(45) NOT NULL,
  Day_Date date DEFAULT NULL,
  Room_Type_Code varchar(30) DEFAULT NULL,
  Room_Availability_Count int(11) DEFAULT NULL,
  KEY Hotel_ID (Hotel_ID),
  KEY Room_Type_Code (Room_Type_Code),
  CONSTRAINT Room_Availability_ibfk_1 FOREIGN KEY (Hotel_ID) REFERENCES Hotels (Hotel_ID) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT Room_Availability_ibfk_2 FOREIGN KEY (Room_Type_Code) REFERENCES Room_types (Room_Type_Code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Daily_Room_Rates 
(
  Hotel_ID varchar(45) NOT NULL DEFAULT '',
  Room_Number int(11) NOT NULL,
  Day_Date date NOT NULL,
  Daily_Room_Rate_Offered int(11) DEFAULT NULL,
  Daily_Room_Rate_Accepted int(11) DEFAULT NULL,
  PRIMARY KEY (Hotel_ID,Room_Number,Day_Date),
  KEY Room_Number (Room_Number),
  CONSTRAINT Room_Number FOREIGN KEY (Room_Number) REFERENCES Rooms (Room_Number)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE Bookings (
  Booking_ID int(11) NOT NULL,
  Agent_Reservation_ID varchar(30) DEFAULT NULL,
  Booking_Status_Code int(11) DEFAULT NULL,
  Hotel_ID varchar(45) DEFAULT NULL,
  Room_Number int(11) DEFAULT NULL,
  Guest_ID int(11) DEFAULT NULL,
  Date_From date DEFAULT NULL,
  Date_To date DEFAULT NULL,
  PRIMARY KEY (Booking_ID),
  KEY Agent_Reservation_ID (Agent_Reservation_ID),
  KEY Booking_Status_Code (Booking_Status_Code),
  KEY Hotel_ID (Hotel_ID),
  KEY Room_Number (Room_Number),
  KEY Guest_ID (Guest_ID),
  CONSTRAINT bookings_ibfk_1 FOREIGN KEY (Agent_Reservation_ID) REFERENCES Agent_Reservation (Agent_Reservation_ID),
  CONSTRAINT bookings_ibfk_2 FOREIGN KEY (Booking_Status_Code) REFERENCES Booking_Status (Booking_Status_Code),
  CONSTRAINT bookings_ibfk_3 FOREIGN KEY (Hotel_ID) REFERENCES Rooms (Hotel_ID),
  CONSTRAINT bookings_ibfk_4 FOREIGN KEY (Room_Number) REFERENCES Rooms (Room_Number),
  CONSTRAINT bookings_ibfk_5 FOREIGN KEY (Guest_ID) REFERENCES Guests (Guest_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Specific_Hotel_Characteristic
 (
  Characteristic_code varchar(30) NOT NULL,
  Hotel_ID varchar(45) NOT NULL,
  PRIMARY KEY (Characteristic_code,Hotel_ID),
  KEY Characteristic_Code (Characteristic_code),
  KEY Hotel_ID (Hotel_ID),
  CONSTRAINT Characteristic_Code FOREIGN KEY (Characteristic_code) REFERENCES Hotel_characteristic (Characteristic_Code),
  CONSTRAINT Hotel_ID FOREIGN KEY (Hotel_ID) REFERENCES Hotels (Hotel_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






INSERT INTO Guests VALUES (1001,'Andrew Louise',2,1),(1002,'Clara Joseph',1,4),(1003,'Samantha Gomes',2,4),(1004,'Jackie Jose',4,4);

INSERT INTO Agent VALUES ('A001','Fredrick Neil'),('A002','Mary Christopher'),('A003','Sally Andotra'),('A004','Charlie Joe');

INSERT INTO Country VALUES ('C0001','Krona','Sweden'),('C0002','Afghani','Afghanistan'),('C0003','Riyal','Iran'),('C0004','Yen','Japan'),('C0005','Kip','Laos'),('C0006','Piso','Philippines');

INSERT INTO Hotels VALUES ('H10001','C0003',5,'Albana International','enquiry@albanaint.com','22, Willington Street,South Dacotta','Albana',8769866,'www.albanaint.com','Close to the airport in the heart of the city'),('H10002','C0002',3,'Bostanese Inn','ask@bostaninn.com','2205, Surround Road,Kabul','Albana',98698666,'www.bostaninn.com','Convenient location close to city attractions'),('H10003','C0001',4,'Holiday Home International','enquiry@holidayhome.com','22, Christopher Street,South Carolina','Carolina',8769866,'www.holidayhome.com','Close to the the city centre'),('H10007','C0005',4,'Seaside Inn','enquiry@seasideinn.com','44, Seaside Street,North Carolina','Carolina',8769866,'www.seasideinn.com','Close to the airport '),('H20001','C0003',5,'Pal International','enquiry@palint.com','90, Cross Avenue,San Jose','California',8769866,'www.palint.com','Lush green surroundings'),('H20002','C0001',4,'Albana International','enquiry@albanaint.com','76, San Jose,California','California',8769866,'www.albanaint.com','Close to the airport'),('H30001','C0002',3,'Radison International','enquiry@radisonint.com','Santa Cruz ,CA','California',8769866,'www.albanaint.com','Close to the sea');

INSERT INTO Agent_Reservation VALUES ('AN0013','A002',5,'2011-02-11'),('AN0015','A003',2,'2011-02-11'),('AN0027','A004',3,'2011-02-11'),('AN0032','A001',4,'2011-02-05'),('AN0045','A001',2,'2011-02-07'),('AN0053','A002',1,'2011-02-12');

INSERT INTO Booking_status VALUES (145,'Provisional','The dates are not yet confirmed'),(166,'Cancelled','Your booking has been cancelled'),(195,'Confirmed','Your hotel booking is confirmed');

INSERT INTO Hotel_Characteristic VALUES ('CC0001','Gymnasium'),('CC0002','Pool'),('CC0003','Internet Connectivity'),('CC0004','Conference Facility'),('CC0005','Doctor on call'),('CC0006','Restaurant');

INSERT INTO Room_Types VALUES ('Dlx',500,'Deluxe'),('Ex',600,'Executive'),('ExS',680,'Executive Suite'),('Std',430,'Standard'),('Sui',600,'Suite');

INSERT INTO Rooms VALUES (101,'H20002',1,'Ex',540),(102,'H10003',1,'Std',640),(103,'H10003',1,'Ex',540),(104,'H20002',1,'Ex',540),(204,'H10003',2,'Sui',600),(206,'H10003',2,'Sui',600),(209,'H10007',2,'Dlx',600), (105,'H20002',1,'Ex',540);

INSERT INTO Room_Availability VALUES ('H10001','2011-01-01','Dlx',30),('H10001','2011-01-02','Dlx',27),('H10001','2011-01-02','Dlx',27),('H10001','2011-01-03','Ex',17),('H10001','2011-01-03','Ex',17),('H10001','2011-02-03','Ex',23),('H10002','2011-05-01','ExS',23);

INSERT INTO Daily_Room_Rates VALUES ('H10003',209,'2011-08-06',6700,6000),('H20002',101,'2011-09-15',6200,5800),('H30001',204,'2011-09-18',6600,5900);

INSERT INTO Bookings VALUES (201101,'AN0013',145,'H20002',102,1001,'2011-02-01','2011-02-03'),(201102,'AN0027',166,'H10007',204,1001,'2011-02-01','2011-02-03'),(201103,'AN0013',195,'H10003',206,1001,'2011-02-01','2011-02-03'),(201104,'AN0015',166,'H10003',206,1002,'2011-03-01','2011-03-07'),
(201105,'AN0032',166,'H20002',104,1002,'2011-03-01','2011-03-07');

INSERT INTO Specific_Hotel_Characteristic VALUES ('CC0001','H10003'),('CC0001','H20002'),('CC0002','H10003'),('CC0003','H10001'),('CC0003','H10007'),('CC0003','H20001'),('CC0004','H10001'),('CC0004','H30001');









