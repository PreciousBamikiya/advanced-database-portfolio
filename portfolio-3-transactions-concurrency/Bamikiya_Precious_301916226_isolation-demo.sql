-- concurrency control...avoiding double booking
START TRANSACTION;

SELECT *
FROM Room
WHERE RoomID = 5
FOR UPDATE;

UPDATE Room
SET RoomStatus = 'Booked'
WHERE RoomID = 5;

COMMIT;
