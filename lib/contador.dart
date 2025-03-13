import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  ContadorState createState() => ContadorState();
}

class ContadorState extends State<Contador> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _disminuir() {
    setState(() {
      _contador--;
    });
  }

  void _multiplicar() {
    setState(() {
      _contador *= 2;
    });
  }

  void _dividir() {
    setState(() {
      _contador ~/= 2;
    });
  }

  void _reset() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color(0xFF5C4274), // Color morado
                width: 3, // Grosor de la línea superior
              ),
              bottom: BorderSide(
                color: Color(0xFF5C4274), // Color morado
                width: 3, // Grosor de la línea inferior
              ),
            ),
          ),
          child: Text(
            'Aplicación de contador',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Contador
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xFF5C4274),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '$_contador',
              style: const TextStyle(fontSize: 80, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _crearBoton('+', _incrementar),
            const SizedBox(width: 10),
            _crearBoton('-', _disminuir),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _crearBoton('*', _multiplicar),
            const SizedBox(width: 10),
            _crearBoton('/', _dividir),
          ],
        ),
        const SizedBox(height: 30),
        _crearBotonReset(), // Botón de reset
      ],
    );
  }

  Widget _crearBoton(String texto, VoidCallback funcion) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF34214D),
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: funcion,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(0),
        ),
        child: Text(
          texto,
          style: const TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }

  // Función para crear el botón de reset
  Widget _crearBotonReset() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF34214D),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      child: ElevatedButton(
        onPressed: _reset,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(0),
        ),
        child: const Text(
          'RESET',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
