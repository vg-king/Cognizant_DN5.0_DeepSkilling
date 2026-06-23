# Exercise 1: Logging Error Messages and Warning Levels using SLF4J

## Objective

To demonstrate logging error messages and warning messages using the SLF4J logging framework with Logback implementation.

## Tools and Technologies

- Java 20
- Maven
- SLF4J
- Logback
- IntelliJ IDEA

## Dependencies

```xml
<dependency>
    <groupId>org.slf4j</groupId>
    <artifactId>slf4j-api</artifactId>
    <version>1.7.30</version>
</dependency>

<dependency>
    <groupId>ch.qos.logback</groupId>
    <artifactId>logback-classic</artifactId>
    <version>1.2.3</version>
</dependency>
```

## Implementation

```java
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoggingExample {

    private static final Logger logger =
            LoggerFactory.getLogger(LoggingExample.class);

    public static void main(String[] args) {

        logger.error("This is an error message");

        logger.warn("This is a warning message");
    }
}
```

## Logging Levels Used

### ERROR

Used to log serious issues that may affect application functionality.

```java
logger.error("This is an error message");
```

### WARN

Used to log warning messages indicating potential problems.

```java
logger.warn("This is a warning message");
```

## Expected Output

```text
ERROR - This is an error message
WARN  - This is a warning message
```

## Conclusion

Successfully implemented logging using SLF4J and Logback. Error and warning messages were generated and displayed using different logging levels, demonstrating basic logging functionality in Java applications.