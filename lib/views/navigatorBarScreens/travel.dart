import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';
import 'package:gezi_app/views/tabbarViewScreens/klise.dart';

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
        body: Column(
          children: [
            Constants.sizedBoxHeigh20,
            _tabbarDesign(),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: _topPadding, left: 10, right: 10),
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabController,
                children: [
                  // Tarihi Yerler
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Tarihi Yerler"),
                      Constants.sizedBoxHeigh20,
                      Stack(
                        children: [
                          Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: Constants.borderRadius20,
                            ),
                            child: ClipRRect(
                              borderRadius: Constants.borderRadius20,
                              child: Image.asset(
                                Constants.infoImageBalikligol,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 20,
                              left: 30,
                              child: Text(
                                "Balıklıgöl",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(color: Constants.colorWhite),
                              ))
                        ],
                      ),
                      Stack(
                        children: [
                          Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: Constants.borderRadius20,
                            ),
                            child: ClipRRect(
                              borderRadius: Constants.borderRadius20,
                              child: Image.asset(
                                Constants.infoImageBalikligol,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height / 4.5,
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 20,
                              left: 30,
                              child: Text(
                                "Balıklıgöl",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(color: Constants.colorWhite),
                              ))
                        ],
                      ),
                    ],
                  ),

                  // Müzeler
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Müzeler",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Constants.sizedBoxHeigh20,
                    ],
                  ),

                  //Camiler
                  const Center(child: Text("Camiler")),

                  // Kliseler
                  const Klise(),

                  // Hanlar
                  const Center(child: Text("Hanlar")),

                  //Meydanlar
                  const Center(child: Text("Meydanlar")),

                  // Konaklar
                  const Center(child: Text("Konaklar")),
                ],
              ),
            ))
          ],
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

  Padding _tabbarDesign() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
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
      ),
    );
  }
}
