# Exercise 3 - Assertions in JUnit

## Objective

To learn and use different JUnit assertions for validating test results.

## Tools Used

* Java JDK 20
* IntelliJ IDEA
* Maven
* JUnit 5 (JUnit Jupiter)

## Assertions Used

### assertEquals()

Verifies that two values are equal.

```java
assertEquals(5, 2 + 3);
```

### assertTrue()

Verifies that a condition is true.

```java
assertTrue(5 > 3);
```

### assertFalse()

Verifies that a condition is false.

```java
assertFalse(5 < 3);
```

### assertNull()

Verifies that an object reference is null.

```java
assertNull(null);
```

### assertNotNull()

Verifies that an object reference is not null.

```java
assertNotNull(new Object());
```

## Test Class

```java
package org.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class AssertionsTest {

    @Test
    void testAssertions() {
        assertEquals(5, 2 + 3);
        assertTrue(5 > 3);
        assertFalse(5 < 3);
        assertNull(null);
        assertNotNull(new Object());
    }
}
```

## Result

```text
1 test passed
Process finished with exit code 0
```

## Conclusion

Different JUnit assertions were successfully implemented and executed. All test cases passed successfully.
