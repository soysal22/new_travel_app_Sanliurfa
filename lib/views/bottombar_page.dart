import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/views/navigator_bar_screens/food.dart';
import 'package:gezi_app/views/navigator_bar_screens/settings.dart';
import 'package:gezi_app/views/navigator_bar_screens/tanitim.dart';
import 'package:gezi_app/views/navigator_bar_screens/travel.dart';

class BottomBarPageView extends StatefulWidget {
  const BottomBarPageView({super.key});

  @override
  State<BottomBarPageView> createState() => _MyWidgetState();
}

int selectedIndex = 0;
double iconSize30 = 30;
double elevation10 = 10;

List<Widget> bodyPageList = const [
  TanitimPage(),
  TravelPage(),
  FoodPage(),
  SettingsPage()
];

class _MyWidgetState extends State<BottomBarPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      extendBody: true,
      body: bodyPageList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: Constants.colorWhite,
          currentIndex: selectedIndex,
          elevation: elevation10,
          iconSize: iconSize30,
          selectedItemColor: Constants.colorBlue,
          unselectedItemColor: Constants.colorBlack,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline), label: "Tanıtım"),
            BottomNavigationBarItem(
                icon: Icon(Icons.map), label: "Gezilecek  \n   Yerler"),
            BottomNavigationBarItem(
                icon: Icon(Icons.food_bank), label: "Yemekler"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "Ayarlar"),
          ]),
    );
  }
}
