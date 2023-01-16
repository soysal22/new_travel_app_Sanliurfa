import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';

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
            Constants.sizedBoxHeigh20,
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: _topPadding),
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tarihi Yerler"),
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
                  ),
                  Center(child: Text("Müze")),
                  Center(child: Text("Camiler")),
                  Center(child: Text("Kliseler")),
                  Center(child: Text("Hanlar")),
                  Center(child: Text("Meydanlar")),
                  Center(child: Text("Tarihi Yerler")),
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
