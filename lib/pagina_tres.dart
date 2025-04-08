import 'package:flutter/material.dart';

class PantallaIII extends StatelessWidget {
  const PantallaIII({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8776cf), // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla tres',
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
