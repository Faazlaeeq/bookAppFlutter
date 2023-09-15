import 'package:book_app/model/book_model.dart';
import 'package:flutter/material.dart';

class BookProvider extends ChangeNotifier {
  List<Book> _books = [
    Book(
      title: "The Art of Computer Programming",
      author: "Donald E. Knuth",
      description: "A classic book on computer programming.",
      price: "\$40.99",
      imageUrl: "https://example.com/book1.jpg",
    ),
    Book(
      title: "Clean Code: A Handbook of Agile Software Craftsmanship",
      author: "Robert C. Martin",
      description: "Learn about writing clean, maintainable code.",
      price: "\$34.95",
      imageUrl: "https://example.com/book2.jpg",
    ),
    Book(
      title: "Introduction to Algorithms",
      author:
          "Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein",
      description: "A comprehensive guide to algorithms.",
      price: "/\$49.99",
      imageUrl: "https://example.com/book3.jpg",
    ),
    Book(
      title: "JavaScript: The Good Parts",
      author: "Douglas Crockford",
      description: "Explore the good parts of JavaScript.",
      price: "/\$29.99",
      imageUrl: "https://example.com/book4.jpg",
    ),
    Book(
      title: "Design Patterns: Elements of Reusable Object-Oriented Software",
      author: "Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides",
      description: "Learn about design patterns in software engineering.",
      price: "/\$45.99",
      imageUrl: "https://example.com/book5.jpg",
    ),
    Book(
      title: "Python Crash Course",
      author: "Eric Matthes",
      description: "A hands-on, project-based introduction to Python.",
      price: "/\$25.99",
      imageUrl: "https://example.com/book6.jpg",
    ),
    Book(
      title: "The Pragmatic Programmer: Your Journey to Mastery",
      author: "Andrew Hunt and David Thomas",
      description: "A guide to becoming a pragmatic programmer.",
      price: "/\$38.00",
      imageUrl: "https://example.com/book7.jpg",
    ),
    Book(
      title: "Cracking the Coding Interview",
      author: "Gayle Laakmann McDowell",
      description: "Prepare for technical interviews with this book.",
      price: "/\$36.00",
      imageUrl: "https://example.com/book8.jpg",
    ),
    Book(
      title: "Artificial Intelligence: A Modern Approach",
      author: "Stuart Russell and Peter Norvig",
      description: "Explore the field of artificial intelligence.",
      price: "/\$52.95",
      imageUrl: "https://example.com/book9.jpg",
    ),
    Book(
      title: "Data Science for Beginners",
      author: "David Smith",
      description: "An introduction to data science concepts.",
      price: "/\$29.95",
      imageUrl: "https://example.com/book10.jpg",
    ),
  ];

  void addBook(Book book) {
    _books.add(book);
    notifyListeners();
  }

  void updateBook(Book book) {
    _books[_books.indexWhere((element) => element.id == book.id)] = book;
    notifyListeners();
  }

  void deleteBook(Book book) {
    _books.removeWhere((element) => element.id == book.id);
    notifyListeners();
  }

  List<Book> get books => _books;
}
