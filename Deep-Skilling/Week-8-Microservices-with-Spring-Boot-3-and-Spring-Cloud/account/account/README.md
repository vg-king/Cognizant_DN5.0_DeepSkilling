# Exercise 2 - Microservices with API Gateway

## Objective
Create two independent Spring Boot microservices:
- Account Microservice
- Loan Microservice

Each microservice exposes a REST API with dummy data.

---

## Technologies Used

- Java 17
- Spring Boot
- Spring Web
- Maven

---

## Account Microservice

### Endpoint

GET /accounts/{number}

Example:

http://localhost:8080/accounts/00987987973432

### Sample Response

```json
{
  "number": "00987987973432",
  "type": "savings",
  "balance": 234343
}