# Exercise 4: Arrange-Act-Assert (AAA) Pattern, Setup and Teardown Methods in JUnit

## Objective

To understand and implement the Arrange-Act-Assert (AAA) testing pattern using JUnit 5 along with setup and teardown methods.

## Tools & Technologies

- Java 20
- Maven
- JUnit 5
- IntelliJ IDEA

## Project Structure

```
src
├── main
│   └── java
│       └── org.example
│           └── Calculator.java
└── test
    └── java
        └── org.example
            └── CalculatorTest.java
```

## Implementation

### Calculator Class

A simple Calculator class was created with an addition method.

```java
public class Calculator {
    public int add(int a, int b) {
        return a + b;
    }
}
```

### Test Class

JUnit test class demonstrating:

- Arrange-Act-Assert (AAA) Pattern
- @BeforeEach (Setup)
- @AfterEach (Teardown)

```java
@BeforeEach
void setUp() {
    calculator = new Calculator();
}

@AfterEach
void tearDown() {
    calculator = null;
}

@Test
void testAddition() {

    // Arrange
    int a = 10;
    int b = 20;

    // Act
    int result = calculator.add(a, b);

    // Assert
    assertEquals(30, result);
}
```

## AAA Pattern Explanation

### Arrange
Prepare test data and required objects.

```java
int a = 10;
int b = 20;
```

### Act
Execute the method being tested.

```java
int result = calculator.add(a, b);
```

### Assert
Verify the expected result.

```java
assertEquals(30, result);
```

## Setup and Teardown

### Setup (@BeforeEach)

Executed before every test case to initialize required objects.

### Teardown (@AfterEach)

Executed after every test case to clean up resources and reset objects.

## Output

```
Setup executed
Teardown executed

1 test passed
Process finished with exit code 0
```

## Conclusion

Successfully implemented the Arrange-Act-Assert (AAA) testing pattern using JUnit 5. Setup and teardown methods were used to initialize and clean up test resources. The test executed successfully and validated the addition functionality.