# Loan Microservice

## Objective
Create a Spring Boot RESTful web service that returns loan account details based on the loan number.

---

## Technologies Used

- Java 17
- Spring Boot
- Spring Web
- Maven

---

## Endpoint

**Method:** GET

```
GET /loans/{number}
```

### Example Request

```
http://localhost:8081/loans/H00987987972342
```

### Sample Response

```json
{
  "number": "H00987987972342",
  "type": "car",
  "loan": 400000,
  "emi": 3258,
  "tenure": 18
}
```

---

## Port Configuration

```
server.port=8081
```

---

## Output

- Loan Microservice started successfully on port **8081**.
- REST API tested successfully using Browser/Postman.