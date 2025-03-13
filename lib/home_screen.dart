import 'package:flutter/material.dart';
import 'contador.dart'; // Importamos el contador

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 120,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PROGRAMACIÓN III',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Gabriely Sonatore',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              'C.I: 29.680.132',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Contador(), // Muestra contador
      ),
    );
  }
}
