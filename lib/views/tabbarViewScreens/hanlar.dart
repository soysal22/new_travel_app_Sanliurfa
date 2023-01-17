import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/category_title.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

final List hanlarList = [
//  şaban hanı sıkıntılı restorasyon lazım ,  Kumluhayat Hanı sıkıntılı resim yok ,
//  fesadı Hanı resim yok  , SAMSAT KAPI HANI RESİM YOK Bican Ağa Hanı resim yok

  /// Topçu hanı topçu meydanındaki balıkçıların olduğu bölgeymiş resmi yok ona bakalım
  "GÜMRÜK HANI",
  "BARUTÇU HANI",
  "MENCEK HANI",
  "MİLLET HANI ",
  "HACI KAMİL HANI",
  //"TOPÇU HANI",
];

final List hanlarListImage = [
  Constants.tanitimImageGumrukHani,
  Constants.hanlarBarutcu,
  Constants.hanlarMencek,
  Constants.hanlarMillet,
  Constants.hanlarHaciKamil
];

class Hanlar extends StatelessWidget {
  const Hanlar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        CategoryTitle(title: "HANLAR"),
        for (int i = 0; i < hanlarList.length; i++)
          ResponsiveCard(image: hanlarListImage[i], title: hanlarList[i]),
      ],
    );
  }
}
