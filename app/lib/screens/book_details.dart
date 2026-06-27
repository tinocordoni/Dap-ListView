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
      child: Column(
        children: [
          SizedBox(height: 120),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(
                  book.cover,
                  width: 300,
                  height: 500,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
        ],
      ),
    );
  }
}
