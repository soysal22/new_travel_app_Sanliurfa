import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/views/bottombar_page.dart';
import 'package:gezi_app/views/tabbar_view_screens/museums.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Constants.colorTranspartent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomBarPageView(),
    );
  }
}
