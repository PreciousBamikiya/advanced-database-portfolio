INSERT INTO Guest
(FirstName, LastName, Email, PhoneNumber, Address)
VALUES
('Mary', 'Ndubuisi', 'maryamaka@gmail.com', '08101020304', 'Dolphine Estate, Lagos'),
('Ibikunle', 'Adebayo', 'kunleade299@gmail.com', '09088237644', 'Crown Estate, Lagos'),
('Darasimi', 'Willoughby', 'bosswills@yahoo.com', '07054265983', 'Diamond Estate, Ondo'),
('Oyin', 'Akintuyi', 'oyin.akintuyi@gmail.com', '08147496468', 'River Park Estate, Abuja'),
('Charles', 'Okeke', 'okekscharlie@yahoo.com', '08068791066', 'Rivtaf Golf Estate, Port Harcourt');

INSERT INTO Room
(RoomNumber, RoomType, PricePerNight, RoomStatus)
VALUES
('101', 'Standard', 35000, 'Available'),
('105', 'Standard', 35000, 'Available'),
('212', 'Deluxe', 55000, 'Available'),
('304', 'Executive Suite', 85000, 'Available'),
('305', 'Executive Suite', 85000, 'Available'),
('409', 'Presidential Suite', 150000, 'Available');

INSERT INTO Reservation
(GuestID, RoomID, CheckInDate, CheckOutDate, ReservationStatus)
VALUES
(1, 1, '2026-11-20', '2026-11-22', 'Confirmed'),
(2, 3, '2026-11-25', '2026-11-28', 'Confirmed'),
(3, 5, '2026-12-01', '2026-12-05', 'Confirmed'),
(4, 2, '2026-11-22', '2026-11-24', 'Pending'),
(5, 6, '2026-12-10', '2026-12-15', 'Confirmed');

INSERT INTO Payment
(ReservationID, Amount, PaymentDate, PaymentMethod)
VALUES
(1, 70000, '2026-11-18', 'Card'),
(2, 165000, '2026-11-22', 'Transfer'),
(3, 340000, '2026-11-28', 'Card'),
(4, 70000, '2026-11-20', 'Cash'),
(5, 750000, '2026-12-05', 'Transfer');

INSERT INTO CheckInOut
(ReservationID, ActualCheckIn, ActualCheckOut)
VALUES
(1, '2026-11-20 14:00:00', '2026-11-22 08:00:00');

INSERT INTO ServiceRequest
(ReservationID, ServiceType, RequestDate, RequestStatus)
VALUES
(1, 'Laundry', '2026-11-20', 'Completed'),
(1, 'Room Service', '2026-11-21', 'Completed'),
(2, 'Airport Pickup', '2026-11-25', 'Pending'),
(3, 'Spa Service', '2026-12-02', 'Pending');
