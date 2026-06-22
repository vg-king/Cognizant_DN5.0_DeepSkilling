# Exercise 1: Mocking and Stubbing using Mockito

## Objective

To understand how Mockito can be used to create mock objects and stub method responses while unit testing a service that depends on an external API.

---

## Tools and Technologies

- Java 20
- Maven
- JUnit 5
- Mockito 5

---

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

---

## Classes Used

### ExternalApi.java

An interface representing an external API.

```java
public interface ExternalApi {
    String getData();
}
```

### MyService.java

A service class that depends on ExternalApi.

```java
public class MyService {

    private ExternalApi externalApi;

    public MyService(ExternalApi externalApi) {
        this.externalApi = externalApi;
    }

    public String fetchData() {
        return externalApi.getData();
    }
}
```

---

## Test Implementation

### Creating Mock Object

```java
ExternalApi mockApi = mock(ExternalApi.class);
```

Creates a fake implementation of ExternalApi.

### Stubbing Method

```java
when(mockApi.getData()).thenReturn("Mock Data");
```

Configures the mock object to return predefined data.

### Injecting Mock

```java
MyService service = new MyService(mockApi);
```

Injects the mock object into the service.

### Assertion

```java
assertEquals("Mock Data", result);
```

Verifies that the returned value matches the expected result.

---

## Test Code

```java
@Test
void testExternalApi() {

    ExternalApi mockApi = mock(ExternalApi.class);

    when(mockApi.getData()).thenReturn("Mock Data");

    MyService service = new MyService(mockApi);

    String result = service.fetchData();

    assertEquals("Mock Data", result);
}
```

---

## Expected Output

```
1 test passed
Process finished with exit code 0
```

---

## Mockito Concepts Used

### Mocking

Creating fake objects for dependencies.

```java
mock(ExternalApi.class);
```

### Stubbing

Defining custom return values for mocked methods.

```java
when(mockApi.getData()).thenReturn("Mock Data");
```

---

## Conclusion

Successfully implemented Mocking and Stubbing using Mockito.

A mock object of ExternalApi was created and configured to return predefined data using stubbing. The service was tested independently without making any real external API calls. The test executed successfully and produced the expected result.