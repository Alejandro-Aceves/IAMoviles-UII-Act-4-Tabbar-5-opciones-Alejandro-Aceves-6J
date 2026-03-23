import 'package:flutter/material.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Carrito', style: TextStyle(color: Colors.black87)),
        backgroundColor: const Color(0xFFA5D6A7),
        elevation: 0,
      ),
      body: Center(
        child: Image.network('https://raw.githubusercontent.com/Alejandro-Aceves/Imagenes-Para-Flutter-Alejandro-Aceves-6J-11-FEB-2026/refs/heads/main/carrito.png'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.green[700],
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 2) return;
          final routes = ['/', '/resenas', '/carrito', '/favoritos', '/cuenta'];
          Navigator.pushReplacementNamed(context, routes[index]);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Tours'),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: 'Reseñas'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carrito'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorito'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cuenta'),
        ],
      ),
    );
  }
}