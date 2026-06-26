import 'package:go_router/go_router.dart';
import 'package:login_interfaz/clases/class_book.dart';
import 'package:login_interfaz/core/data/session.dart';
import 'package:login_interfaz/screens/home.dart';
import 'package:login_interfaz/screens/login.dart';
import 'package:login_interfaz/screens/book_details.dart';

final appRouter = GoRouter(
  initialLocation: "/login",
  
  routes: [
   
  
  GoRoute(path: "/login", builder: (context, state) => const LoginScreen()),
  GoRoute(path: "/home", builder: (context, state) => HomeScreen(usuario: currentUser!)),
  GoRoute(path: "/details", builder: (context, state) => BookDetailsScreen(book: state.extra as Book))
]
 
);
