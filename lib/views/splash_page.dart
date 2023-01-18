import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gezi_app/views/deneme/bottombar_page.dart';
import 'package:gezi_app/views/info.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
late SharedPreferences prefs;

bool? finalBool;

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // shared refence ın kontrolünü yapıyorum  ki tekrar tekrar info sayfası çıkmasın
    getValue().whenComplete(() async {
      Future.delayed(const Duration(milliseconds: 4), () {
        if (finalBool == true) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const BottomBarPageView(),
          ));
        } else {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const Info(),
          ));
        }
      });
    });
    super.initState();
  }

  Future getValue() async {
    prefs = await _prefs;

    setState(() {
      finalBool = prefs.getBool('change');
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
