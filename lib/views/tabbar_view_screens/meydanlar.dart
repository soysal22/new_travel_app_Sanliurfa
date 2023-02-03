import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';
import 'package:gezi_app/views/detail_page.dart';

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

final List meydanRabia = [
  Constants.meydanRabia,
];

final List meydanTopcu = [
  Constants.meydanTopcu,
];

final List meydanHasimiye = [
  Constants.meydanHasimiye,
  Constants.meydanHasimiyeTwo,
];

final List meydanYildiz = [
  Constants.meydanYildiz,
];

final List meydanElliSekiz = [
  Constants.meydanElliSekiz,
];

final List caroselListsMeydanlar = [
  meydanRabia,
  meydanTopcu,
  meydanHasimiye,
  meydanYildiz,
  meydanElliSekiz,
];

class Meydanlar extends StatelessWidget {
  const Meydanlar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: meydanList.length,
      itemBuilder: (context, index) {
        return ResponsiveCard(
            OnPressed: () {
              log("basıldı abiiiii");

              Get.to(() => DetailPage(
                  caroselImageList: caroselListsMeydanlar[index],
                  title: meydanList[index],
                  subTitle: meydanList[index]));
            },
            image: meydanListImage[index],
            title: meydanList[index]);
      },
    );
  }
}
