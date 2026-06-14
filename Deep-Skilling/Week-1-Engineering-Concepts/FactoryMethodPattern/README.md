# Factory Method Pattern

## Objective
Implement the Factory Method Design Pattern to create different types of documents (Word, PDF, and Excel) without directly instantiating their classes.

---

## Files

- Document.java
- WordDocument.java
- PdfDocument.java
- ExcelDocument.java
- DocumentFactory.java
- WordFactory.java
- PdfFactory.java
- ExcelFactory.java
- FactoryMethodTest.java



---

## Concepts Used

- Interface
- Abstraction
- Inheritance
- Polymorphism
- Factory Method Design Pattern

---

## How It Works

1. `Document` is an interface that defines the `open()` method.
2. `WordDocument`, `PdfDocument`, and `ExcelDocument` implement the `Document` interface.
3. `DocumentFactory` is an abstract factory class with the method `createDocument()`.
4. `WordFactory`, `PdfFactory`, and `ExcelFactory` create their respective document objects.
5. The client code uses factories instead of directly creating document objects.

---

## Output

```text
Opening Word Document
Opening PDF Document
Opening Excel Document
```

## Conclusion

The Factory Method Pattern hides the object creation logic from the client. It improves flexibility, maintainability, and scalability by delegating object creation to factory classes.