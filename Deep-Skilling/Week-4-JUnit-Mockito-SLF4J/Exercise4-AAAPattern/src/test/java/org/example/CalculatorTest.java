package org.example;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
public class CalculatorTest {
    private Calculator calculator;
    @BeforeEach
    void setUp(){
        calculator = new Calculator();        System.out.println("Setup executed");

    }
    @AfterEach
    void tearDown(){
        calculator = null;
        System.out.println("Teardown executed");
    }
    @Test
    void testAddition(){
        int a = 10;
        int b = 20;
        int result = calculator.add(a,b);

        assertEquals(30,result);
    }
}
