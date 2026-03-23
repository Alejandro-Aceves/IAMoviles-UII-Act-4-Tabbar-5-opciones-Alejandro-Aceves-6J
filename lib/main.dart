import 'package:flutter/material.dart';
import 'paginas/tours.dart';
import 'paginas/resenas.dart';
import 'paginas/carrito.dart';
import 'paginas/favoritos.dart';
import 'paginas/cuenta.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Turística',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ToursPage(),
        '/resenas': (context) => const ResenasPage(),
        '/carrito': (context) => const CarritoPage(),
        '/favoritos': (context) => const FavoritosPage(),
        '/cuenta': (context) => const CuentaPage(),
      },
    );
  }
}