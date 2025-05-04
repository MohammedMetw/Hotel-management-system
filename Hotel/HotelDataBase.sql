create database Hotel 
use Hotel
 CREATE TABLE Room (
    Room_id INT,
    Roomnumber INT,
    RoomType VARCHAR(25),
    price_per_night DECIMAL(10,2),
    Isavailable BIt,
    Description TEXT
	primary key (Room_id)
);

CREATE TABLE Customers (
customerID int, 
FullName varchar(25), 
Email varchar(30),
phone_number varchar(11),
NationalID varchar(14)
primary key (customerID)
);

create table Reservation (
ReservationID int , 
Room_id int , 
Checkin_date Date, 
Checkout_date Date , 
Status varchar(30)
primary key (ReservationID)
 foreign key(Room_id ) references Room (Room_id));

 Create table RoomService (
 service_id int ,
 ReservationID int ,
 ServiceName varchar(16), 
 ServiceDate Date, 
 Cost Decimal 
 primary key (service_id )
 foreign key (ReservationID) references Reservation (ReservationID)
 );

 Create table payments (
 paymentID INT , 
 ReservationID int ,
 AmountPaid Decimal ,
 paymentDate Date , 
 payment_method varchar(50) , 
 IsPaid BIT 
 primary key(paymentID)
 foreign key (ReservationID) references Reservation(ReservationID)
 );

 create table Reviews (
 review_Id int , 
 customerId int , 
 ReservationID int , 
 Rating Decimal , 
 Comment text  , 
 ReviewDate Date 
 primary key (review_id )
 foreign key (customerid ) references Customers (customerid),
  FOREIGN KEY (ReservationID) REFERENCES Reservation( ReservationID)
 );
GO
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (21, 221, 'Suite', 196.46, 1, 'Success investment capital able nothing.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (22, 222, 'Suite', 145.45, 1, 'Glass with reality.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (23, 223, 'Double', 126.73, 1, 'Add campaign understand better total hear.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (24, 224, 'Double', 183.17, 1, 'Compare opportunity show Mrs check.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (25, 225, 'Double', 77.39, 1, 'Himself look country dog.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (26, 226, 'Suite', 286.29, 0, 'Address firm half he baby drop star.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (27, 227, 'Single', 253.16, 0, 'Expect possible third ball.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (28, 228, 'Double', 181.91, 0, 'Billion gas notice second.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (29, 229, 'Suite', 258.08, 1, 'Rich bad impact so.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (30, 230, 'Double', 176.46, 1, 'Military town open personal.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (31, 231, 'Double', 86.84, 0, 'His assume include.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (32, 232, 'Suite', 265.05, 0, 'She bad hotel discuss he tonight.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (33, 233, 'Double', 246.87, 0, 'Series specific speech until street those.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (34, 234, 'Double', 231.18, 1, 'Development officer yes about resource.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (35, 235, 'Double', 194.5, 0, 'Second remember religious role through play.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (36, 236, 'Single', 158.85, 0, 'Fear again big old nature.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (37, 237, 'Single', 69.35, 0, 'Generation move nearly billion during make rest without.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (38, 238, 'Double', 164.65, 1, 'Join professor sell happen there available.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (39, 239, 'Double', 134.26, 1, 'Nor tonight visit themselves current discuss carry.');
INSERT INTO Room (Room_id, Roomnumber, RoomType, price_per_night, Isavailable, Description)
VALUES (40, 240, 'Double', 256.11, 0, 'Night different hour successful artist receive eight own.');

Go
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (21, 'Tina Curtis', 'anitabaldwin@gmail.com', '71360217742', '97576660926158');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (22, 'James Willis', 'bestjeremy@yahoo.com', '20446183829', '10819898694408');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (23, 'Ashley Smith', 'csmith@price.com', '98258605098', '61905672713700');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (24, 'Howard Ford', 'oliverrichard@thomas.com', '47519791115', '57563641727687');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (25, 'Kara Cuevas', 'ashley85@yahoo.com', '54998347036', '45488727348925');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (26, 'Marissa Myers', 'brent28@bell-roth.com', '98503046392', '14024893769016');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (27, 'Sarah Dawson', 'kdavis@brown.info', '80803887832', '26300292616924');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (28, 'Mckenzie White', 'clarkholly@hotmail.com', '50772752554', '40899401162719');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (29, 'Angela Thomas', 'taylorelizabeth@hubbard.com', '01304329044', '26207877178292');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (30, 'Richard Black', 'garciakatrina@yahoo.com', '75165014084', '91045207940063');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (31, 'Christopher Richardson', 'kaitlynroberts@yang.com', '89740594951', '58294710406386');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (32, 'Tina Pacheco', 'patrick83@gmail.com', '10063894985', '81952039538247');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (33, 'Wesley Matthews', 'sreyes@mcdonald-stanley.com', '22010998477', '94674351158366');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (34, 'Barry Moody', 'dorseysara@wright-washington.com', '25274734299', '65365718845701');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (35, 'Sean Mack', 'woodsstephen@walters.net', '68971167581', '75654641374959');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (36, 'Haley Harris', 'caroline47@moss.com', '89983540665', '80646168116865');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (37, 'Brandon Lee', 'wmarquez@yahoo.com', '04013601535', '22845608237818');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (38, 'Allison Bell', 'idavis@ramirez.com', '83011022135', '58288141788426');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (39, 'Mr. Douglas Stout', 'mitchellwilliam@yahoo.com', '44085086615', '60857926187970');
INSERT INTO Customers (customerID, FullName, Email, phone_number, NationalID)
VALUES (40, 'Mark Porter', 'stacey44@watson.com', '23597119998', '33623763575097');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (21, 25, '2025-04-22', '2025-04-25', 'Pending');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (22, 30, '2025-04-22', '2025-04-24', 'Cancelled');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (23, 21, '2025-04-22', '2025-04-29', 'Cancelled');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (24, 34, '2025-04-22', '2025-04-27', 'Cancelled');
Go
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (25, 40, '2025-04-22', '2025-04-28', 'Cancelled');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (26, 23, '2025-04-22', '2025-05-01', 'Confirmed');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (27, 26, '2025-04-22', '2025-04-26', 'Pending');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (28, 36, '2025-04-22', '2025-04-27', 'Cancelled');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (29, 29, '2025-04-22', '2025-04-27', 'Cancelled');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (30, 38, '2025-04-22', '2025-04-24', 'Pending');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (31, 22, '2025-04-22', '2025-04-27', 'Pending');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (32, 37, '2025-04-22', '2025-04-30', 'Confirmed');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (33, 21, '2025-04-22', '2025-04-30', 'Confirmed');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (34, 31, '2025-04-22', '2025-04-24', 'Confirmed');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (35, 23, '2025-04-22', '2025-04-23', 'Cancelled');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (36, 23, '2025-04-22', '2025-04-29', 'Cancelled');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (37, 28, '2025-04-22', '2025-04-30', 'Pending');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (38, 35, '2025-04-22', '2025-04-27', 'Confirmed');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (39, 33, '2025-04-22', '2025-04-27', 'Pending');
INSERT INTO Reservation (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
VALUES (40, 23, '2025-04-22', '2025-05-02', 'Pending');
Go

INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (21, 29, 'Cleaning', '2025-04-22', 72.39);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (22, 30, 'Cleaning', '2025-04-22', 58.36);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (23, 28, 'Laundry', '2025-04-22', 35.16);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (24, 23, 'Laundry', '2025-04-22', 41.75);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (25, 29, 'Cleaning', '2025-04-22', 83.68);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (26, 25, 'Cleaning', '2025-04-22', 13.61);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (27, 21, 'Food Delivery', '2025-04-22', 68.47);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (28, 32, 'Cleaning', '2025-04-22', 66.63);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (29, 26, 'Cleaning', '2025-04-22', 98.72);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (30, 39, 'Cleaning', '2025-04-22', 50.12);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (31, 32, 'Laundry', '2025-04-22', 68.99);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (32, 27, 'Cleaning', '2025-04-22', 42.16);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (33, 32, 'Laundry', '2025-04-22', 58.03);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (34, 39, 'Food Delivery', '2025-04-22', 71.79);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (35, 24, 'Cleaning', '2025-04-22', 75.98);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (36, 39, 'Cleaning', '2025-04-22', 45.66);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (37, 29, 'Cleaning', '2025-04-22', 73.92);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (38, 26, 'Food Delivery', '2025-04-22', 79.03);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (39, 39, 'Laundry', '2025-04-22', 71.67);
INSERT INTO RoomService (service_id, ReservationID, ServiceName, ServiceDate, Cost)
VALUES (40, 34, 'Laundry', '2025-04-22', 68.01);
Go

INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (21, 37, 383.55, '2025-04-22', 'Credit Card', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (22, 29, 488.26, '2025-04-22', 'Cash', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (23, 30, 103.86, '2025-04-22', 'Cash', 1);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (24, 37, 318.0, '2025-04-22', 'PayPal', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (25, 38, 927.22, '2025-04-22', 'PayPal', 1);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (26, 21, 312.89, '2025-04-22', 'Credit Card', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (27, 33, 315.85, '2025-04-22', 'Credit Card', 1);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (28, 30, 900.69, '2025-04-22', 'Cash', 1);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (29, 21, 968.64, '2025-04-22', 'Credit Card', 1);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (30, 24, 378.67, '2025-04-22', 'Credit Card', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (31, 39, 311.93, '2025-04-22', 'Credit Card', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (32, 21, 627.19, '2025-04-22', 'Cash', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (33, 22, 748.44, '2025-04-22', 'PayPal', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (34, 33, 500.56, '2025-04-22', 'Cash', 1);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (35, 25, 357.49, '2025-04-22', 'Cash', 1);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (36, 28, 443.73, '2025-04-22', 'Credit Card', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (37, 33, 455.77, '2025-04-22', 'Cash', 1);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (38, 28, 813.88, '2025-04-22', 'PayPal', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (39, 22, 517.1, '2025-04-22', 'Credit Card', 0);
INSERT INTO payments (paymentID, ReservationID, AmountPaid, paymentDate, payment_method, IsPaid)
VALUES (40, 28, 917.15, '2025-04-22', 'Credit Card', 1);
Go
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (21, 30, 37, 2.2, 'Civil western heavy young leg as series pass hundred alone.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (22, 38, 21, 3.7, 'East sing occur population almost campaign quite bill seek begin concern.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (23, 35, 22, 3.4, 'Idea head thus own soldier from special yourself.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (24, 40, 30, 3.1, 'Maybe forget those Congress middle stop capital.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (25, 39, 31, 1.7, 'Camera pretty above run against main identify fall.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (26, 25, 40, 2.6, 'Finish environment must consumer social behavior her.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (27, 33, 33, 2.2, 'Close my already report political Mr difficult chance near term race city other.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (28, 27, 23, 1.5, 'Pull put personal put front address lay trip.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (29, 33, 30, 2.8, 'Recognize federal financial Congress democratic statement art medical.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (30, 34, 31, 4.8, 'Chair idea federal standard to network although girl reflect few employee.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (31, 21, 39, 4.9, 'Religious book ball item that major fall wish amount.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (32, 27, 28, 1.5, 'Without every back action help he raise near raise.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (33, 25, 34, 4.2, 'Paper available nearly television tax bag school.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (34, 29, 21, 1.0, 'Since beyond simply already increase enough fill century.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (35, 39, 33, 1.5, 'Fill idea will specific group hot size.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (36, 23, 39, 2.1, 'By four first before something game sense brother somebody respond build task box.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (37, 26, 40, 3.5, 'Modern operation maintain by have across food.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (38, 33, 30, 3.0, 'Voice product perhaps move method agent face win few baby.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (39, 29, 27, 3.1, 'Letter mean experience manage yes about.', '2025-04-22');
INSERT INTO Reviews (review_Id, customerId, ReservationID, Rating, Comment, ReviewDate)
VALUES (40, 33, 28, 1.3, 'Tree color stand bar cup doctor himself community still special relationship building.', '2025-04-22');
select  * from Room 
select * from Customers
select * from Reservation
select * from Reviews
select * from RoomService 
select * from payments 
select paymentID,ReservationID from payments where Payment_method = 'cash'
SELECT c.FullName, rv.Rating, rv.Comment, rv.ReviewDate
FROM Reviews rv
JOIN Customers c ON rv.customerId = c.customerID;
SELECT p.paymentID, p.AmountPaid, p.paymentDate, p.payment_method, r.Room_id
FROM payments p
JOIN Reservation r ON p.ReservationID = r.ReservationID
WHERE p.IsPaid = 1;
SELECT rs.ServiceName, rs.ServiceDate, rs.Cost, r.ReservationID
FROM RoomService rs
JOIN Reservation r ON rs.ReservationID = r.ReservationID;
SELECT c.FullName, c.Email, r.ReservationID, r.Checkin_date, r.Checkout_date, r.Status
FROM Customers c
JOIN Reservation r ON c.customerID = r.Room_id;
SELECT * FROM Room
WHERE Isavailable = 1;





