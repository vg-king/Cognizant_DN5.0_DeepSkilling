# Exercise 2: Verifying Interactions using Mockito

## Objective

To verify that a method is called on a mock object using Mockito.

## Tools and Technologies

- Java 20
- Maven
- JUnit 5
- Mockito 5

## Project Structure

```
src
├── main
│   └── java
│       └── org.example
│           ├── ExternalApi.java
│           └── MyService.java
│
└── test
    └── java
        └── org.example
            └── MyServiceTest.java
```

## Implementation

### ExternalApi

An interface representing an external dependency.

### MyService

A service class that depends on ExternalApi.

### Test Case

A mock object is created and injected into MyService. The service method is executed and Mockito verifies that the expected method interaction occurred.

```java
@Test
void testVerifyInteraction() {

    ExternalApi mockApi = mock(ExternalApi.class);

    MyService service = new MyService(mockApi);

    service.fetchData();

    verify(mockApi).getData();
}
```

## Mockito Concept Used

### Mocking

```java
mock(ExternalApi.class);
```

Creates a fake implementation.

### Verification

```java
verify(mockApi).getData();
```

Checks whether the method was called.

## Expected Output

```
1 test passed
Process finished with exit code 0
```

## Conclusion

Successfully verified method interactions using Mockito. A mock object was created and injected into the service. Mockito's verify() method confirmed that the expected method call occurred during execution.