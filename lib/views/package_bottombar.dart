import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gezi_app/views/screens/food.dart';
import 'package:gezi_app/views/screens/settings.dart';
import 'package:gezi_app/views/screens/tanitim.dart';
import 'package:gezi_app/views/screens/travel.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBarNewPageView extends StatefulWidget {
  const BottomBarNewPageView({super.key});

  @override
  State<BottomBarNewPageView> createState() => _BottomBarNewPageViewState();
}
// navigation bardaki ekranların listesi

List<Widget> _buildScreens() {
  return const [TanitimPage(), TravelPage(), FoodPage(), SettingsPage()];
}

PersistentTabController? controller = PersistentTabController(initialIndex: 0);

class _BottomBarNewPageViewState extends State<BottomBarNewPageView> {
  // navigation bardaki itemların listesi
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        textStyle: const TextStyle(fontSize: 20),
        icon: const Icon(CupertinoIcons.location_solid),
        title: ("Tanıtım"),
        // activeColorPrimary: CupertinoColors.systemRed,
        activeColorSecondary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: const TextStyle(fontSize: 20),
        icon: const Icon(CupertinoIcons.map),
        title: ("Gezilecek \n  Yerler"),
        contentPadding: 0,
        //activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: const TextStyle(fontSize: 20),
        icon: const Icon(CupertinoIcons.battery_0),
        title: ("Yemekler"),
        //activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        textStyle: const TextStyle(fontSize: 20),
        icon: const Icon(CupertinoIcons.settings),
        title: ("Settings"),
        //activeColorPrimary: CupertinoColors.activeBlue,
        activeColorSecondary: CupertinoColors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: PersistentTabView(
        context,
        controller: controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,

        backgroundColor: Colors.black87, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true,
        // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style7, // navigation bardaki Stylellerin seçildiği yer

        onItemSelected: (index) {
          setState(() {});
        },
      ),
    );
  }
}
