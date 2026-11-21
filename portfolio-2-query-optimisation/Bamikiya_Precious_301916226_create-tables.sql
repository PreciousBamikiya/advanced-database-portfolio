CREATE DATABASE HotelReservationSystem;

USE HotelReservationSystem;

CREATE TABLE Guest (
  GuestID INT AUTO_INCREMENT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL,
  PhoneNumber VARCHAR(20),
  Address VARCHAR(255)
);

CREATE TABLE Room (
  RoomID INT AUTO_INCREMENT PRIMARY KEY,
    RoomNumber VARCHAR(10) UNIQUE NOT NULL,
    RoomType VARCHAR(50) NOT NULL,
    PricePerNight DECIMAL(10,2) NOT NULL,
    RoomStatus VARCHAR(20) DEFAULT 'Available'
);

CREATE TABLE Reservation (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    GuestID INT NOT NULL,
    RoomID INT NOT NULL,
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    ReservationStatus VARCHAR(20) DEFAULT 'Confirmed',

    CONSTRAINT FK_Reservation_Guest
        FOREIGN KEY (GuestID)
        REFERENCES Guest(GuestID),

    CONSTRAINT FK_Reservation_Room
        FOREIGN KEY (RoomID)
        REFERENCES Room(RoomID)
);

CREATE TABLE Payment (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    ReservationID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATE NOT NULL,
    PaymentMethod VARCHAR(30),

    CONSTRAINT FK_Payment_Reservation
        FOREIGN KEY (ReservationID)
        REFERENCES Reservation(ReservationID)
);

CREATE TABLE CheckInOut (
    ActivityID INT AUTO_INCREMENT PRIMARY KEY,
    ReservationID INT UNIQUE NOT NULL,
    ActualCheckIn DATETIME,
    ActualCheckOut DATETIME,

    CONSTRAINT FK_CheckInOut_Reservation
        FOREIGN KEY (ReservationID)
        REFERENCES Reservation(ReservationID)
);

CREATE TABLE ServiceRequest (
    RequestID INT AUTO_INCREMENT PRIMARY KEY,
    ReservationID INT NOT NULL,
    ServiceType VARCHAR(50),
    RequestDate DATE,
    RequestStatus VARCHAR(20),

    CONSTRAINT FK_ServiceRequest_Reservation
        FOREIGN KEY (ReservationID)
        REFERENCES Reservation(ReservationID)
);
