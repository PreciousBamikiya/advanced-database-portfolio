# Replication and Sharding Strategy

## Replication

Replication creates copies of database data across multiple servers.

### Benefits

- High Availability
- Disaster Recovery
- Backup Redundancy
- Faster Read Performance

### Example

The Lagos branch updates a reservation.

The update is replicated to:

- Abuja Replica
- Port Harcourt Replica
- Disaster Recovery Replica

---

## Sharding

Sharding distributes data across multiple database partitions.

### Sharding Key

Hotel Branch

---

## Example

Shard 1
Lagos Branch

Shard 2
Abuja Branch

Shard 3
Port Harcourt Branch

Shard 4
Kano Branch

---

## Benefits

- Improved Scalability
- Reduced Query Load
- Better Performance
- Support for Large Data Volumes

---

## Recommended Strategy

The Grand Horizon Hotel Reservation System should implement:

- Replication for high availability
- Sharding by hotel branch for scalability

This combination provides strong performance and fault tolerance.
