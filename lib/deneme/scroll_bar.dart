// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyScrollbar extends StatelessWidget {
  const MyScrollbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Scrollbar')),
      body: Scrollbar(
        radius: const Radius.circular(50),
        thumbVisibility: true, // scrollbar always visitable
        thickness: 20, // width of scrollbar
        showTrackOnHover: false,

        child: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: 25,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) => buildCard(index + 1),
        ),
      ),
    );
  }

  Widget buildCard(int index) => Card(
        margin: EdgeInsets.zero,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Item $index',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
}
