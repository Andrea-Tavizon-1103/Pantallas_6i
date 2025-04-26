import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const PantallaVII(),
    );
  }
}

class PantallaVII extends StatefulWidget {
  const PantallaVII({super.key});

  @override
  State<PantallaVII> createState() => _PantallaVIIState();
}

class _PantallaVIIState extends State<PantallaVII> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x89a3a6b2),
        title: const Center(
          child: Text(
            'Pantalla Seis',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Estado actual: $_isChecked')),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              child: CheckboxListTile(
                title: const Text(
                  'Aceptar términos y condiciones',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'Debes aceptar para continuar',
                  style: TextStyle(color: Colors.grey),
                ),
                value: _isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue;
                  });
                },
                activeColor: Colors.orangeAccent,
                checkColor: Colors.white,
                tileColor: Colors.black12,
                controlAffinity: ListTileControlAffinity.leading,
                tristate: true,
                secondary: const Icon(Icons.assignment, color: Colors.orange),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: _isChecked == true
                  ? () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('¡Proceso completado!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  : null,
              icon: const Icon(Icons.check_circle),
              label: const Text('Continuar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[700],
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('¡Volver!'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _isChecked = false),
        backgroundColor: Colors.orange,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
