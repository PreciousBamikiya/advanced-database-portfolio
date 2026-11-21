-- View all guests
SELECT * FROM Guest;

-- View all rooms
SELECT * FROM Room;

-- View all reservations
SELECT * FROM Reservation;

-- View all payments
SELECT * FROM Payment;

-- View all check in and check out
SELECT * FROM CheckInOut;

-- View all other services request
SELECT * FROM ServiceRequest;

--reservation details
SELECT
    r.ReservationID,
    g.FirstName,
    g.LastName,
    rm.RoomNumber,
    r.CheckInDate,
    r.CheckOutDate
FROM Reservation r
INNER JOIN Guest g
    ON r.GuestID = g.GuestID
INNER JOIN Room rm
    ON r.RoomID = rm.RoomID;

-- total revenue
SELECT
    SUM(Amount) AS TotalRevenue
FROM Payment;

-- most booked room types
SELECT
    rm.RoomType,
    COUNT(*) AS NumberOfBookings
FROM Reservation r
INNER JOIN Room rm
ON r.RoomID = rm.RoomID
GROUP BY rm.RoomType
ORDER BY NumberOfBookings DESC;

-- guests with multiple reservations
SELECT
    GuestID,
    COUNT(*) AS ReservationCount
FROM Reservation
GROUP BY GuestID
HAVING COUNT(*) > 1;

-- service request
SELECT
    g.FirstName,
    g.LastName,
    sr.ServiceType,
    sr.RequestStatus
FROM ServiceRequest sr
INNER JOIN Reservation r
ON sr.ReservationID = r.ReservationID
INNER JOIN Guest g
ON r.GuestID = g.GuestID;

-- current occupancy report
SELECT
    RoomNumber,
    RoomType,
    RoomStatus
FROM Room;
