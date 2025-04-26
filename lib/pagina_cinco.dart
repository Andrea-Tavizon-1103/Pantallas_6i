import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PantallaV(),
    );
  }
}

class PantallaV extends StatelessWidget {
  const PantallaV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffca89ff), // Fondo morado
        title: const Center(
          child: Text(
            'Pantalla Cinco',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Widget023(), // Widget de Autocomplete
            const SizedBox(height: 30), // Espacio de 30px
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Cierra la pantalla actual
              },
              child: const Text('¡Volver!'),
            ),
          ],
        ),
      ),
    );
  }
}

class Widget023 extends StatelessWidget {
  const Widget023({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return listItems.where((String item) {
          return item.contains(textEditingValue.text.toLowerCase());
        });
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: textEditingController,
            focusNode: focusNode,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Escribe una fruta...',
            ),
          ),
        );
      },
      onSelected: (String item) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Seleccionaste: $item')),
        );
      },
    );
  }
}
