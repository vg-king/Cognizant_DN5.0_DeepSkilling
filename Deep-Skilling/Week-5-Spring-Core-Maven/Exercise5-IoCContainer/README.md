# Exercise 5: Configuring the Spring IoC Container

## Objective

The objective of this exercise is to understand how the Spring IoC (Inversion of Control) Container manages object creation and dependency injection using XML-based configuration. This project demonstrates how Spring creates and manages beans instead of manually instantiating objects.

---

## Technologies Used

- Java 17
- Spring Framework (Spring Context)
- Maven
- IntelliJ IDEA

---

## Project Structure

```
Exercise5-IoCContainer
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

## Components

### BookRepository

Represents the repository layer responsible for data access.

### BookService

Represents the service layer that depends on the `BookRepository` bean.

### applicationContext.xml

Defines Spring Beans and configures the IoC Container using XML.

### Main.java

Loads the Spring IoC Container and retrieves the `BookService` bean from the container.

---

## Spring IoC Container Flow

1. Application starts from `Main.java`.
2. Spring loads `applicationContext.xml`.
3. Spring creates the `BookRepository` bean.
4. Spring creates the `BookService` bean.
5. Spring injects the `BookRepository` bean into `BookService`.
6. The `BookService` bean is retrieved from the IoC Container.
7. The application executes successfully.

---

## Output

```
Book Service Working...
Book Repository Working...
```

---

## Key Concepts Learned

- Spring IoC Container
- Inversion of Control (IoC)
- Bean Configuration
- XML Configuration
- ApplicationContext
- Dependency Injection
- Setter Injection
- Bean Management

---

## Conclusion

This exercise demonstrates how the Spring IoC Container manages bean creation, wiring, and lifecycle using XML configuration. By allowing Spring to create and inject objects automatically, applications become loosely coupled, easier to maintain, and more scalable.