import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/category_title.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

final List meydanList = [
  "HAŞİMİYE MEYDANI",
  "RABİA MEYDANI",
  "TOPÇU MEYDANI",
  "YILDIZ MEYDANI",
  "58 MEYDANI",
];

final List meydanListImage = [
  Constants.meydanHasimiye,
  Constants.meydanRabia,
  Constants.meydanTopcu,
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
        CategoryTitle(title: "MEYDANLAR"),
        for (int i = 0; i < meydanList.length; i++)
          ResponsiveCard(image: meydanListImage[i], title: meydanList[i]),
      ],
    );
  }
}
