-- roll payment back after payment transaction starts (prevent payment for same reservation ID from duplicating)
START TRANSACTION;

INSERT INTO Payment
(
    ReservationID,
    Amount,
    PaymentDate,
    PaymentMethod
)
VALUES
(
    1,
    70000,
    '2026-11-18',
    'Card'
);

ROLLBACK;
