# Hands-on 4 - Difference between JPA, Hibernate and Spring Data JPA

## Objective

Understand the differences between JPA, Hibernate and Spring Data JPA.

---

## JPA (Java Persistence API)

- JPA is a specification (JSR-338).
- It defines standards for Object Relational Mapping (ORM).
- It does not provide any implementation.
- It defines annotations such as @Entity, @Id, @Table and @Column.

---

## Hibernate

- Hibernate is an ORM framework.
- It is one of the implementations of JPA.
- It converts Java objects into database records.
- It handles SQL generation and database interaction.

Example:

```java
session.save(employee);