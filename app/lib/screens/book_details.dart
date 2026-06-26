import 'package:flutter/material.dart';
import 'package:login_interfaz/clases/class_book.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 223, 163),
      body: _BookDetailView(book: book),
    );
  }
}

class _BookDetailView extends StatelessWidget {
  const _BookDetailView({required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(book.cover, width: 400, height: 1600),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),
              Text(book.name, style: TextStyle(fontSize: 40)),
              SizedBox(height: 50),
              Text(book.author, style: TextStyle(fontSize: 30)),
              SizedBox(height: 50),
              Text("${book.year}", style: TextStyle(fontSize: 30)),
            ],
          ),
          SizedBox(width: 200),
        ],
      ),
    );
  }
}
