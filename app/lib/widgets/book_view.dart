import 'package:flutter/material.dart';
import '/clases/class_book.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book, this.onTap});

  final Book book;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(book.name),
        subtitle: Text(
          book.author.toString(),
          style: TextStyle(color: Colors.grey),
        ),
        leading: Image.network(book.cover, width: 50, height: 50),
        onTap: () => onTap?.call()
      ),
    );
  }
}
