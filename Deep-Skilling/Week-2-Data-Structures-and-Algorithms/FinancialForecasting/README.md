# Exercise 7: Financial Forecasting

## Objective

To predict future financial values using a recursive algorithm based on past growth rates.

---

## Problem Statement

A financial forecasting tool must estimate future values by applying a fixed growth rate over a number of years.

The solution uses recursion to repeatedly calculate future growth.

---

## Concept Used

### Recursion

Recursion is a technique where a method calls itself until a base condition is reached.

A recursive solution contains:

- Base Case
- Recursive Case

---

## Formula

Future Value = Present Value × (1 + Growth Rate)

---

## Example

Current Value = 10000

Growth Rate = 10%

Years = 5

Predicted Future Value = 16105.1

---

## Time Complexity

O(n)

where n = number of years

---

## Space Complexity

O(n)

due to recursive call stack

---

## Optimization

A more efficient solution can be implemented using:

1. Iteration
2. Math.pow()

Formula:

Future Value = Present Value × (1 + Growth Rate)^Years

---

## Technologies Used

- Java
- Recursion
- Financial Forecasting
- OOP