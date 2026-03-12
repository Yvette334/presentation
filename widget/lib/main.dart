import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: Listorder(),
    debugShowCheckedModeBanner: false,
));

class Listorder extends StatefulWidget {
  const Listorder({super.key});

  @override
  State<Listorder> createState() => _ListorderState();
}

class _ListorderState extends State<Listorder> {
  // 1. DATA: The list of items
  final List<String> itemlist = ["Hospital", "Bus Park", "Market", "School"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ReorderableListView widget"),
        centerTitle: true,
      ),
      body: ReorderableListView(
        // call back when a user reorders the list
        onReorder: (oldIndex, newIndex) {
        
        },
        // list of items
        children: [
          for (int i = 0; i < itemlist.length; i++)
            ListTile(
              key: ValueKey(itemlist[i]),
              tileColor: i.isOdd ? Colors.white12 : Colors.white30,
              title: Text(itemlist[i]),
              // THIS LINE allows dragging ONLY by the icon:
              trailing: ReorderableDragStartListener(
                index: i,
                child: const Icon(Icons.drag_handle),
              ),
            ),
        ],
      ),
    );
  }
}