# Concurrency Analysis

## Overview

A hotel reservation system is a multi-user environment where multiple staff members may perform operations simultaneously.

Examples include:

- Creating reservations
- Processing payments
- Updating room status
- Recording check-ins

Without concurrency controls, data inconsistencies may occur.

---

## Potential Problems

### Lost Update

Occurs when multiple users update the same record and one update overwrites another.

### Dirty Read

Occurs when a transaction reads uncommitted data from another transaction.

### Non-Repeatable Read

Occurs when data changes between two reads within the same transaction.

### Phantom Read

Occurs when additional rows appear during a transaction.

---

## Control Mechanisms

To prevent concurrency issues:

- Transactions
- Record Locking
- COMMIT
- ROLLBACK
- Isolation Levels

are used.

---

## Recommended Isolation Level

REPEATABLE READ

This level provides a balance between consistency and performance and helps prevent data anomalies in hotel booking operations.