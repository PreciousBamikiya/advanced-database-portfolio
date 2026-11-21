# Query Performance Analysis

## Objective

The objective of indexing is to reduce the amount of data that must be scanned during query execution.

---

## Indexes Created

1. Guest(Email)
2. Room(RoomStatus)
3. Reservation(CheckInDate, CheckOutDate)
4. Payment(PaymentDate)
5. ServiceRequest(RequestStatus)

---

## Performance Improvements

Before indexing, queries required full table scans

After indexing, the database engine can use index seeks to locate more efficiently.

Examples:

- Reservation searches by date
- Guest searches by email
- Revenue reports using payment dates
- Service request tracking by status

---

## Conclusion

Database indexing significantly improves query performance by reducing query execution time and improving scalability as data volume increases.