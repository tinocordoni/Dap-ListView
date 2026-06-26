import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_interfaz/clases/class_user_info.dart';
import 'package:login_interfaz/core/data/books_datasource.dart';
import 'package:login_interfaz/widgets/book_view.dart';

class HomeScreen extends StatefulWidget {
  final UserInfo usuario;

  const HomeScreen({super.key, required this.usuario});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Library - ${widget.usuario.name}",
          style: TextStyle(color: Color.fromARGB(255, 227, 171, 0)),
        ),
        backgroundColor: Color.fromARGB(255, 244, 223, 163),
        shadowColor: Color.fromARGB(255, 244, 223, 163),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 227, 171, 0)),
      ),
      body: const _BookView(),
    );
  }
}

class _BookView extends StatelessWidget {
  const _BookView(); //saqué el super.key

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaLibros.length,
      itemBuilder: (context, index) {
        final book = listaLibros[index];
        return BookItem(
          book: book,
          onTap: () => context.push("/details", extra: book),
        );
      },
    );
  }
}
