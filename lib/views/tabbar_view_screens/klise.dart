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
  Constants.clicheImageYakup
];

final List clicheImageGermus = [
  Constants.clicheImageGermus,
  Constants.clicheImageGermusOne,
  Constants.clicheImageGermusTwo,
  Constants.clicheImageGermusThree,
];

final List clicheImageReji = [
  Constants.clicheImageReji,
  Constants.clicheImageRejiOne,
  Constants.clicheImageRejiTwo,
];

final List clicheImageYakup = [
  Constants.clicheImageYakup,
  Constants.clicheImageYakupOne,
  Constants.clicheImageYakupTwo,
];

final List caroselImageCliche = [
  Constants.clicheImageYakup,
  Constants.clicheImageYakupOne,
  Constants.clicheImageYakupTwo,
];

class Kliseler extends StatelessWidget {
  const Kliseler({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (int i = 0; i < kliseList.length; i++)
          ResponsiveCard(
              OnPressed: () {
                log("basıldı abiiiii");

                Get.to(() => DetailPage(
                    caroselImageList: caroselImageCliche[i],
                    title: kliseList[i],
                    subTitle: kliseList[i]));
              },
              image: kliseListImage[i],
              title: kliseList[i]),
      ],
    );
  }
}
