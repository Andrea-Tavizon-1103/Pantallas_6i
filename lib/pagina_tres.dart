import 'package:flutter/material.dart';

class PantallaIII extends StatefulWidget {
  const PantallaIII({Key? key}) : super(key: key);

  @override
  State<PantallaIII> createState() => _PantallaIIIState();
}

class _PantallaIIIState extends State<PantallaIII> {
  int _counter = 0;
  final _items = <String>[];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _listKey.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void _removeItem(int index) {
    _listKey.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text(
                "Deleted",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8cd8fb),
        title: const Center(
          child: Text(
            'Pantalla Tres',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('¡Volver!'),
          ),
          const SizedBox(height: 10),
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    color: Color(0xff9bdffe),
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          _removeItem(index);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
