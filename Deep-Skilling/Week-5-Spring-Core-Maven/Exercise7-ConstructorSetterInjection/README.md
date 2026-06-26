# Exercise 7: Implementing Constructor and Setter Injection

## Objective

The objective of this exercise is to understand how Spring performs Dependency Injection using both Constructor Injection and Setter Injection. The application demonstrates how the Spring IoC Container injects dependencies through XML configuration.

---

## Technologies Used

- Java 17
- Spring Framework (Spring Context)
- Maven
- IntelliJ IDEA

---

## Project Structure

```
Exercise7-ConstructorSetterInjection
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

Represents the service layer that receives the `BookRepository` dependency through both constructor injection and setter injection.

### applicationContext.xml

Defines Spring Beans and configures Constructor Injection using `<constructor-arg>` and Setter Injection using `<property>`.

### Main.java

Loads the Spring IoC Container, retrieves the `BookService` bean, and executes the application.

---

## Injection Flow

1. Application starts from `Main.java`.
2. Spring loads `applicationContext.xml`.
3. Spring creates the `BookRepository` bean.
4. Spring injects the dependency into the `BookService` constructor.
5. Spring performs Setter Injection using the setter method.
6. The configured bean is stored inside the IoC Container.
7. `BookService` is retrieved using `ApplicationContext`.
8. The application executes successfully.

---

## Output

```
Constructor Injection Executed
Setter Injection Executed
Book Service Working...
Book Repository Working...
```

---

## Key Concepts Learned

- Constructor Injection
- Setter Injection
- Dependency Injection (DI)
- Spring IoC Container
- Bean Configuration
- XML Configuration
- ApplicationContext
- `<constructor-arg>`
- `<property>`
- Bean Wiring

---

## Conclusion

This exercise demonstrates both Constructor Injection and Setter Injection using the Spring IoC Container. Spring creates and injects the required dependencies automatically through XML configuration, resulting in loosely coupled and maintainable applications.