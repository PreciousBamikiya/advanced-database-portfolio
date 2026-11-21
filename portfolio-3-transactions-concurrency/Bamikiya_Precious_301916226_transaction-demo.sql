-- add one reservation details room status'
START TRANSACTION;

INSERT INTO Reservation
(
    GuestID,
    RoomID,
    CheckInDate,
    CheckOutDate,
    ReservationStatus
)
VALUES
(
    1,
    2,
    '2026-12-20',
    '2026-12-23',
    'Confirmed'
);

UPDATE Room
SET RoomStatus = 'Booked'
WHERE RoomID = 2;

COMMIT;
