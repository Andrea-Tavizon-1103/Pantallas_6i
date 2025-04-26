import 'package:flutter/material.dart';
import 'package:tavizonrutas/pagina_inicial.dart';
import 'package:tavizonrutas/pagina_dos.dart';
import 'package:tavizonrutas/pagina_tres.dart';
import 'package:tavizonrutas/pantalla_cuatro.dart';
import 'package:tavizonrutas/pagina_cinco.dart';
import 'package:tavizonrutas/pantalla_seis.dart';
import 'package:tavizonrutas/pagina_siete.dart';

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
        '/pantalla4': (context) => const PantallaIV(),
        '/pantalla5': (context) => const PantallaV(),
        '/pantalla6': (context) => const PantallaVI(),
        '/pantalla7': (context) => const PantallaVII(),
      },
    );
  }
}
