import 'package:flutter/material.dart';

class PantallaI extends StatelessWidget {
  final String titulo;
  const PantallaI({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffeb6ff), // Fondo azul
        title: Center(
          child: Text(
            titulo,
            style: const TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Ir a pantalla dos'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Ir a pantalla tres'),
            ),
          ),
        ],
      ),
    );
  }
}
