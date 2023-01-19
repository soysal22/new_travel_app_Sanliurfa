import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/category_title.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

final List konaklarList = [
  "CEVAHİR KONAĞI", //HACI MUSTAFA HACIKAMİLOĞLU KONAĞI ESKİ İSMİ
  "TBMM Evi (Şahap Bakır Evi - İsa Beden Evi)",
  "Mahmut Nedim Efendi Konağı",
  "Şair Sakıp Efendi konağı",
  "Feyzullah Efendi Konağı", //halfeti
  "AKYÜZ EVLERİ KONAĞI",
  "VİLAYET KONAK EVİ",
];

final List konaklarListImage = [
  Constants.clicheImageGermusFront,
];

class Konaklar extends StatelessWidget {
  const Konaklar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        CategoryTitle(title: "KONAKLAR"),
        for (int i = 0; i < konaklarList.length; i++)
          ResponsiveCard(image: konaklarListImage[i], title: konaklarList[i]),
      ],
    );
  }
}
