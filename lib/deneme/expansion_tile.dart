import 'dart:developer';

import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  const MyExpansionTile({Key? key}) : super(key: key);

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

String? text;

class _MyExpansionTileState extends State<MyExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expansion Tile')),
      body: ExpansionTile(
        leading: const Icon(Icons.info),
        backgroundColor: Colors.black12,
        // ignore: sort_child_properties_last
        children: [
          ListTile(
            title: const Text('First tile'),
            onTap: () {
              setState(() {
                text = 'First tile';

                log("text : $text");
              });
            },
          ),
          ListTile(
            title: const Text('Second tile'),
            onTap: () {
              setState(() {
                text = 'Second tile';
                log("text : $text");
              });
            },
          ),
          ListTile(
            title: const Text('Thord tile'),
            onTap: () {
              setState(() {
                text = 'Thord tile';
                log("text : $text");
              });
            },
          ),
          ListTile(
            title: const Text('Fourth tile'),
            onTap: () {
              setState(() {
                text = 'Fourth tile';
                log("text : $text");
              });
            },
          ),
        ],
        title: Text(
          text ?? "See More",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
