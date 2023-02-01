import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final double _topPadding = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: _appbarDesign(),
      body: Padding(
        padding: EdgeInsets.only(top: _topPadding, left: 10, right: 10),
        child: Column(
          children: const [],
        ),
      ),
    );
  }

  AppBar _appbarDesign() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: const Text("YEMEKLER"),
    );
  }
}
