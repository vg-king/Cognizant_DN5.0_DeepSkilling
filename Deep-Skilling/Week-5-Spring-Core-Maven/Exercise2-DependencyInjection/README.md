# Exercise 2: Implementing Dependency Injection

## Objective

The objective of this exercise is to understand how Spring Framework performs Dependency Injection (DI) using the Inversion of Control (IoC) Container. This project demonstrates Setter-based Dependency Injection by injecting the `BookRepository` bean into the `BookService` bean through XML configuration.

---

## Technologies Used

- Java 17
- Spring Framework (Spring Context)
- Maven
- IntelliJ IDEA

---

## Project Structure

```
Exercise2-DependencyInjection
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

Represents the service layer that depends on the `BookRepository` bean.

### applicationContext.xml

Configures Spring Beans and performs Setter-based Dependency Injection using the `<property>` tag.

### Main.java

Loads the Spring IoC Container, retrieves the `BookService` bean, and executes the application.

---

## Spring Dependency Injection Flow

1. Application starts from `Main.java`.
2. Spring loads `applicationContext.xml`.
3. Spring creates the `BookRepository` bean.
4. Spring creates the `BookService` bean.
5. Spring injects the `BookRepository` bean into the `BookService` bean using Setter Injection.
6. The `BookService` bean is retrieved from the Spring IoC Container.
7. The `display()` method is executed.

---

## Output

```
Book Service Working...
Book Repository Working...
```

---

## Key Concepts Learned

- Spring IoC Container
- Dependency Injection (DI)
- Setter Injection
- Bean Wiring
- XML Configuration
- `<property>` Tag
- `ref` Attribute
- ApplicationContext

---

## Conclusion

This exercise demonstrates how Spring manages dependencies between objects using Setter-based Dependency Injection. Instead of creating dependent objects manually, the Spring IoC Container automatically injects the required beans through XML configuration, resulting in loosely coupled and easily maintainable code.