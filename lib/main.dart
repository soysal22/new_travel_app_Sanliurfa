import 'package:flutter/material.dart';
import 'package:gezi_app/views/package_bottombar.dart';
import 'package:gezi_app/views/screens/travel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TravelPage(),
    );
  }
}