# Exercise 2: E-commerce Platform Search Function

## Objective
To implement and compare Linear Search and Binary Search algorithms for an e-commerce platform search functionality.

---

## Problem Statement

An e-commerce platform needs a fast and efficient product search system. The goal is to implement:

1. Linear Search
2. Binary Search

and compare their performance.

---

## Classes Used

### Product.java

Represents a product with:

- productId
- productName
- category

### SearchDemo.java

Contains:

- Linear Search implementation
- Binary Search implementation
- Main method for testing

---

## Algorithms Implemented

### Linear Search

Checks each product one by one until the target product is found.

#### Time Complexity

| Case | Complexity |
|--------|------------|
| Best Case | O(1) |
| Average Case | O(n) |
| Worst Case | O(n) |

---

### Binary Search

Searches in a sorted array by repeatedly dividing the search space into half.

#### Time Complexity

| Case | Complexity |
|--------|------------|
| Best Case | O(1) |
| Average Case | O(log n) |
| Worst Case | O(log n) |

---

## Sample Input

Products:

- Laptop
- Mobile
- Shoes
- Watch

Search Product:

Shoes

---

## Sample Output

Linear Search Found: Shoes

Binary Search Found: Shoes

---

## Comparison

| Feature | Linear Search | Binary Search |
|----------|----------|----------|
| Sorted Data Required | No | Yes |
| Best Case | O(1) | O(1) |
| Average Case | O(n) | O(log n) |
| Worst Case | O(n) | O(log n) |
| Speed | Slower | Faster |

---

## Conclusion

Binary Search is more suitable for large e-commerce platforms because it provides significantly faster search performance compared to Linear Search. However, Binary Search requires the data to be sorted before searching.

---

## Technologies Used

- Java
- Arrays
- Linear Search
- Binary Search
- Object-Oriented Programming (OOP)