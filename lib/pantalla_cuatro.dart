import 'package:flutter/material.dart';

class PantallaIV extends StatefulWidget {
  const PantallaIV({Key? key}) : super(key: key);

  @override
  State<PantallaIV> createState() => PantallaIVState(); // Corregido aquí
}

class PantallaIVState extends State<PantallaIV> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Agregado Scaffold para una pantalla completa
      appBar: AppBar(
        backgroundColor: const Color(0xff8cfbad),
        title: const Center(
          child: Text(
            'Pantalla Cuatro',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffed8cff), // corregido
              ),
              child: const Text('Rotate Logo'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('¡Volver!'),
            ),
          ],
        ),
      ),
    );
  }
}
