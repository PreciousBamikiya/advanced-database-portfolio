# NoSQL Suitability Analysis

## Introduction

The Grand Horizon Hotel Reservation System was originally designed using a relational database model. This portfolio evaluates the suitability of MongoDB as an alternative NoSQL solution.

---

## Why MongoDB?

MongoDB is a document-oriented database that stores data as BSON documents.

Unlike relational databases, MongoDB does not require complex table joins for many operations.

---

## Advantages

### Flexible Schema

New attributes can be added without redesigning the database structure.

Example:

A loyalty program field could be added to guest records without altering existing documents.

---

### Faster Data Retrieval

Reservation information, guest data, room details, and payments can be stored within a single document.

This reduces the need for multiple joins.

---

### Horizontal Scalability

MongoDB supports sharding which distributes data across multiple servers.

This makes it suitable for large hotel chains.

---

### High Availability

Replication allows copies of the database to exist on multiple servers.

This improves reliability and fault tolerance.

---

## Disadvantages

### Data Duplication

Guest information may appear in multiple reservation documents.

### Weaker Transaction Support

Traditional relational databases generally provide stronger ACID guarantees.

### Storage Overhead

Embedded documents can increase storage requirements.

---

## Conclusion

MongoDB is suitable for hotel reservation systems that require flexibility, scalability, and rapid data retrieval. However, relational databases remain preferable where complex transactions and strict consistency requirements dominate.
