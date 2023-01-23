import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/deneme/expansion_tile.dart';
import 'package:gezi_app/deneme/scroll_bar.dart';
import 'package:gezi_app/views/bottombar_page.dart';
import 'package:gezi_app/views/info.dart';
import 'package:gezi_app/views/splash_page.dart';
import 'package:gezi_app/views/tabbarViewScreens/camiler.dart';

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
      home: Camiler(),
    );
  }
}
