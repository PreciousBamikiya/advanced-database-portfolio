CREATE INDEX idx_guest_email
ON Guest(Email);

CREATE INDEX idx_room_status
ON Room(RoomStatus);

CREATE INDEX idx_reservation_dates
ON Reservation(CheckInDate, CheckOutDate);

CREATE INDEX idx_payment_date
ON Payment(PaymentDate);

CREATE INDEX idx_service_request_status
ON ServiceRequest(RequestStatus);
