import 'package:flutter/material.dart';

class PantallaII extends StatefulWidget {
  const PantallaII({Key? key}) : super(key: key);

  @override
  State<PantallaII> createState() => _PantallaIIState();
}

class _PantallaIIState extends State<PantallaII> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffca89ff), // Fondo morado
        title: const Center(
          child: Text(
            'Pantalla Dos',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 250.0,
              color: const Color(0xfff4d191),
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 50.0),
              ),
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
