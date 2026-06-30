# Spring Data JPA - Quick Example

## Objective

This project demonstrates the basics of Spring Data JPA with Hibernate and MySQL. It retrieves data from a MySQL database using the JpaRepository interface without writing SQL queries manually.

---

## Technologies Used

- Java 17
- Spring Boot 3.5.16
- Spring Data JPA
- Hibernate
- MySQL 8
- Maven
- IntelliJ IDEA

---

## Project Structure

```
orm-learn
│
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com.cognizant.ormlearn
│   │   │       ├── OrmLearnApplication.java
│   │   │       ├── model
│   │   │       │     └── Country.java
│   │   │       ├── repository
│   │   │       │     └── CountryRepository.java
│   │   │       └── service
│   │   │             └── CountryService.java
│   │   │
│   │   └── resources
│   │         └── application.properties
│   │
│   └── test
│
└── pom.xml
```

---

## Database Configuration

Database Name:

```
ormlearn
```

Create table:

```sql
CREATE TABLE country(
    co_code VARCHAR(2) PRIMARY KEY,
    co_name VARCHAR(50)
);

INSERT INTO country VALUES ('IN','India');
INSERT INTO country VALUES ('US','United States of America');
```

---

## Features

- Spring Boot Application
- MySQL Integration
- Hibernate ORM
- Spring Data JPA
- Entity Mapping
- Repository Layer
- Service Layer
- Fetch all countries using JpaRepository

---

## Output

```
Inside main

Start

countries=[
Country{code='IN', name='India'},
Country{code='US', name='United States of America'}
]

End
```

---

## Key Concepts Learned

- ORM (Object Relational Mapping)
- Spring Data JPA
- Hibernate
- Entity
- Repository
- Service
- @Entity
- @Table
- @Id
- @Column
- @Repository
- @Service
- @Autowired
- @Transactional
- JpaRepository
- findAll()

---

## Author

Vishnu Gupta