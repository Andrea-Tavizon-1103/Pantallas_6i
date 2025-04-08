import 'package:flutter/material.dart';

class PantallaII extends StatelessWidget {
  const PantallaII({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbfaa6c), // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla Dos',
            style: TextStyle(
              color: Color(0xffffffff), // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Pantalla Inicial!'),
        ),
      ),
    );
  }
}
