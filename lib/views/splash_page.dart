import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/views/bottombar_page.dart';
import 'package:gezi_app/views/info.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
SharedPreferences? prefs;

bool? finalBool;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //shared refence ın kontrolünü yapıyorum  ki tekrar tekrar info sayfası çıkmasın

    getValue().whenComplete(() async {
      Future.delayed(const Duration(milliseconds: 4), () {
        if (finalBool == true) {
          Get.to(() => const BottomBarPageView());
        } else {
          Get.to(() => const Info());
        }
      });
    });

    super.initState();
  }

  Future getValue() async {
    prefs = await _prefs;

    setState(() {
      finalBool = prefs?.getBool('change') ?? false;
    });

    log("final Bool: $finalBool");
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
      body: Center(
          child: Text(
        "HOŞGELDİNİZ",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
