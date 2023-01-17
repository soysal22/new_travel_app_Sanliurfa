import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/views/tabbarViewScreens/camiler.dart';
import 'package:gezi_app/views/tabbarViewScreens/hanlar.dart';
import 'package:gezi_app/views/tabbarViewScreens/klise.dart';
import 'package:gezi_app/views/tabbarViewScreens/konaklar.dart';
import 'package:gezi_app/views/tabbarViewScreens/meydanlar.dart';
import 'package:gezi_app/views/tabbarViewScreens/museums.dart';
import 'package:gezi_app/views/tabbarViewScreens/tarihi_yerler.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({super.key});

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> with TickerProviderStateMixin {
  TabController? tabController;

  final List<Tab> tabbarList = const [
    Tab(child: Text('Tarihi Yerler')),
    Tab(child: Text('Müzeler')),
    Tab(child: Text('Camiler')),
    Tab(child: Text('Kliseler')),
    Tab(child: Text('Hanlar')),
    Tab(child: Text('Meydanlar')),
    Tab(child: Text('Konaklar')),
  ];

  final double _topPadding = 15;
  @override
  void initState() {
    tabController = TabController(length: tabbarList.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabbarList.length,
      child: Scaffold(
        extendBody: true,
        appBar: _appbarDesign(),
        body: Padding(
          padding: EdgeInsets.only(top: _topPadding, left: 10, right: 10),
          child: Column(
            children: [
              _tabbarDesign(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: _topPadding),
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: tabController,
                    children: const [
                      // Tarihi Yerler
                      TarihiYerler(),

                      // Müzeler
                      Museums(),

                      //Camiler
                      Camiler(),

                      // Kliseler
                      Kliseler(),

                      // Hanlar
                      Hanlar(),

                      //Meydanlar
                      Meydanlar(),

                      // Konaklar
                      Konaklar(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appbarDesign() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: const Text("Gezilecek Yerler"),
    );
  }

  Widget _tabbarDesign() {
    return Container(
      decoration: BoxDecoration(
          color: Constants.colorBlue, borderRadius: Constants.borderRadius20),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
        child: TabBar(
          isScrollable: true,
          controller: tabController,
          indicator: BoxDecoration(
              borderRadius: Constants.borderRadius20,
              color: Constants.colorRed),
          labelColor: Constants.colorWhite,
          unselectedLabelColor: Constants.colorBlack,
          labelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          unselectedLabelStyle: const TextStyle(fontSize: 17),
          tabs: tabbarList,
        ),
      ),
    );
  }
}
