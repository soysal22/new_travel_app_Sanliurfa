import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

final List tarihiYerlerList = [];

final List tarihiYerlerListImage = [
  Constants.clicheImageGermusFront,
];

class TarihiYerler extends StatefulWidget {
  const TarihiYerler({super.key});

  @override
  State<TarihiYerler> createState() => _TarihiYerlerState();
}

class _TarihiYerlerState extends State<TarihiYerler>
    with TickerProviderStateMixin {
  TabController? tabControllerTarihi;

  final double _topPadding = 15;

  final List<Tab> tabbarListTarihi = const [
    Tab(child: Text('Merkez')),
    Tab(child: Text('Halfeti')),
    Tab(child: Text('Harran')),
    Tab(child: Text('Birecik')),
    Tab(child: Text('Siverek')),
    Tab(child: Text('Viranşehir')),
    Tab(child: Text('Suruc')),
    Tab(child: Text('akcakale')),
    Tab(child: Text('Bozova')),
    Tab(child: Text('CeylanPınar')),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: _topPadding, left: 10, right: 10),
      child: Column(
        children: [
          // for (int i = 0; i < tarihiYerlerList.length; i++)
          //   ResponsiveCard(
          //       image: tarihiYerlerListImage[i], title: tarihiYerlerList[i]),

          tabbarTarihiDesign(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: _topPadding),
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabControllerTarihi,
                children: const [],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container tabbarTarihiDesign() {
    return Container(
      decoration: BoxDecoration(
          color: Constants.colorBlue, borderRadius: Constants.borderRadius20),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
        child: TabBar(
          isScrollable: true,
          controller: tabControllerTarihi,
          indicator: BoxDecoration(
              borderRadius: Constants.borderRadius20,
              color: Constants.colorRed),
          labelColor: Constants.colorWhite,
          unselectedLabelColor: Constants.colorBlack,
          labelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          unselectedLabelStyle: const TextStyle(fontSize: 17),
          tabs: tabbarListTarihi,
        ),
      ),
    );
  }
}
