import 'package:flutter/material.dart';

class PantallaVI extends StatefulWidget {
  const PantallaVI({Key? key}) : super(key: key);

  @override
  State<PantallaVI> createState() => _PantallaVIState();
}

class _PantallaVIState extends State<PantallaVI> {
  int _currentIndex = 0;
  final List<Widget> _bodyContent = const [
    Icon(Icons.home, size: 100, color: Color(0xfff199ff)),
    Icon(Icons.menu, size: 100, color: Color(0xffd4834c)),
    Icon(Icons.person, size: 100, color: Color(0xff3a70b7)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x893dfb47),
        title: const Center(
          child: Text(
            'Pantalla Seis',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: _bodyContent[_currentIndex],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffff89b6),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: const Text(
              '¡Volver!',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
              height: 30), // Espacio adicional para el BottomNavigationBar
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) => setState(() => _currentIndex = newIndex),
        backgroundColor: const Color(0xffca89ff),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
