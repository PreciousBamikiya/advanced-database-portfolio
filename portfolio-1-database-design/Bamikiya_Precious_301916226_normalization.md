# Database Normalization

## First Normal Form (1NF)

The Hotel Reservation System satisfies 1NF because:

- Each table has a primary key.
- No repeating groups exist.
- Each field stores atomic values.

Example:

A guest's phone number is stored in a single field rather than multiple values in one column.

---

## Second Normal Form (2NF)

The database satisfies 2NF because:

- All non-key attributes depend on the entire primary key.
- No partial dependencies exist.

For example, in the Reservation table, CheckInDate and CheckOutDate depend entirely on ReservationID.

---

## Third Normal Form (3NF)

The database satisfies 3NF because:

- No transitive dependencies exist.
- Non-key attributes depend only on the primary key.

For example:

RoomType and PricePerNight are stored within the Room entity and are not duplicated in Reservation.

---

## Benefits

- Reduced redundancy
- Improved consistency
- Easier maintenance
- Better scalability
