import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';
import 'package:gezi_app/views/detail_page.dart';

final List kliseList = [
  "GERMUŞ KİLİSESİ",
  "REJİ KİLİSESİ (AZİZ PETRUS KİLİSESİ)",
  "DEYR-İ YAKUB (YAKUB MANASTIRI)",
];

final List kliseListImage = [
  Constants.clicheImageGermus,
  Constants.clicheImageReji,
  Constants.clicheYakup
];

final List clicheGermus = [
  Constants.clicheImageGermus,
  Constants.clicheImageGermusOne,
  Constants.clicheImageGermusTwo,
  Constants.clicheImageGermusThree,
];

final List clicheReji = [
  Constants.clicheImageReji,
  Constants.clicheImageRejiOne,
  Constants.clicheImageRejiTwo,
];

final List clicheYakup = [
  Constants.clicheYakup,
  Constants.clicheYakupOne,
  Constants.clicheYakupTwo,
];

final List caroselListsCliche = [
  clicheGermus,
  clicheReji,
  clicheYakup,
];

class Kliseler extends StatelessWidget {
  const Kliseler({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: kliseList.length,
      itemBuilder: (context, index) {
        return ResponsiveCard(
            OnPressed: () {
              log("basıldı abiiiii");

              Get.to(() => DetailPage(
                  caroselImageList: caroselListsCliche[index],
                  title: kliseList[index],
                  subTitle: kliseList[index]));
            },
            image: kliseListImage[index],
            title: kliseList[index]);
      },
    );
  }
}
