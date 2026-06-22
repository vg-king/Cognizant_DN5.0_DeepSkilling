# Exercise 1 - Setting Up JUnit

## Objective
Set up JUnit in a Java Maven project and create a basic test class to verify that the testing framework is configured correctly.

## Tools Used
- Java JDK 20
- IntelliJ IDEA
- Maven
- JUnit 5 (JUnit Jupiter)

## Project Structure

```text
Exercise1-SettingUpJUnit
│
├── src
│   ├── main
│   │   └── java
│   │       └── org.example
│   │           └── Main.java
│   │
│   └── test
│       └── java
│           └── org.example
│               └── SampleTest.java
│
└── pom.xml
```

## Maven Dependency

```xml
<dependency>
    <groupId>org.junit.jupiter</groupId>
    <artifactId>junit-jupiter</artifactId>
    <version>5.10.2</version>
    <scope>test</scope>
</dependency>
```

## Test Class

```java
package org.example;

import org.junit.jupiter.api.Test;

public class SampleTest {

    @Test
    void testJUnitSetup() {
        System.out.println("JUnit Setup Successful");
    }
}
```

## Execution Result

The test was executed successfully and produced the following output:

```text
JUnit Setup Successful
```

Result:

```text
1 test passed
Process finished with exit code 0
```

## Conclusion

JUnit was successfully configured in the Maven project. A sample test case was created and executed successfully, confirming that the JUnit testing environment is working correctly.