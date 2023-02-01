import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

final List meydanList = [
  "RABİA MEYDANI",
  "TOPÇU MEYDANI",
  "HAŞİMİYE MEYDANI",
  "YILDIZ MEYDANI",
  "58 MEYDANI",
];

final List meydanListImage = [
  Constants.meydanRabia,
  Constants.meydanTopcu,
  Constants.meydanHasimiye,
  Constants.meydanYildiz,
  Constants.meydanElliSekiz,
];

class Meydanlar extends StatelessWidget {
  const Meydanlar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (int i = 0; i < meydanList.length; i++)
          ResponsiveCard(image: meydanListImage[i], title: meydanList[i]),
      ],
    );
  }
}
