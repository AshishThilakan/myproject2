import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionEx(),
  ));
}

class ExpansionEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expansion Tile")),
      body: const ExpansionTile(
          title: Text('Colours'),
          subtitle: Text('Expand This Tile'),
          children: [
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.red),
              title: Text('Red'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blue),
              title: Text('Blue'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green),
              title: Text('Green'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.yellow),
              title: Text('Yellow'),
            ),
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.pink),
              title: Text('Pink'),
            ),
          ]),
    );
  }
}
