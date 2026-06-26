# Exercise 1: Configuring a Basic Spring Application

## Objective

The objective of this exercise is to understand the basic configuration of the Spring Framework using XML-based configuration. This project demonstrates how to create and manage Spring Beans using the Spring IoC Container.

---

## Technologies Used

- Java 17
- Spring Framework (Spring Context)
- Maven
- IntelliJ IDEA

---

## Project Structure

```
Exercise1-BasicSpringApplication
│
├── pom.xml
│
└── src
    ├── main
    │
    ├── java
    │   └── com
    │       └── library
    │           ├── repository
    │           │      └── BookRepository.java
    │           ├── service
    │           │      └── BookService.java
    │           └── Main.java
    │
    └── resources
            └── applicationContext.xml
```

---

## Dependencies

The project uses the following Spring dependency:

- Spring Context

---

## Components

### BookRepository

Represents the repository layer responsible for data access.

### BookService

Represents the service layer containing business logic.

### applicationContext.xml

Contains the Spring Bean configuration.

### Main.java

Loads the Spring Application Context, retrieves the BookService bean, and executes the application.

---

## Spring Flow

1. Application starts from `Main.java`.
2. Spring loads `applicationContext.xml`.
3. Spring creates the configured beans.
4. Beans are stored inside the Spring IoC Container.
5. `ApplicationContext#getBean()` retrieves the required bean.
6. The `display()` method of `BookService` is executed.

---

## Output

```
Book Service Working...
```

---

## Key Concepts Learned

- Spring Framework Basics
- Maven Project Configuration
- Spring IoC Container
- ApplicationContext
- Spring Bean Configuration
- XML-Based Configuration
- Bean Retrieval using getBean()

---

## Conclusion

This exercise demonstrates the basic setup of a Spring Framework application using Maven and XML configuration. It illustrates how Spring manages object creation through the IoC Container and provides beans to the application using the ApplicationContext.