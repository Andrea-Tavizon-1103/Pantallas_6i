import 'package:flutter/material.dart';
import 'package:tavizonrutas/pagina_inicial.dart';
import 'package:tavizonrutas/pagina_dos.dart';
import 'package:tavizonrutas/pagina_tres.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaI(titulo: 'Pantalla Principal'),
        '/pantalla2': (context) => const PantallaII(),
        '/pantalla3': (context) => const PantallaIII(),
      },
    );
  }
}
