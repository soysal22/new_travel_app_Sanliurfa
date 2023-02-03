import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';
import 'package:gezi_app/views/detail_page.dart';

final List hanlarList = [
//  şaban hanı sıkıntılı restorasyon lazım ,  Kumluhayat Hanı sıkıntılı resim yok ,
//  fesadı Hanı resim yok  , SAMSAT KAPI HANI RESİM YOK Bican Ağa Hanı resim yok

  /// Topçu hanı topçu meydanındaki balıkçıların olduğu bölgeymiş resmi yok ona bakalım
  "BARUTÇU HANI",
  "GÜMRÜK HANI",
  "MENCEK HANI",
  "MİLLET HANI ",
  "HACI KAMİL HANI",
  //"TOPÇU HANI",
];

final List hanlarListImage = [
  Constants.hanlarBarutcu,
  Constants.tanitimImageGumrukHani,
  Constants.hanlarMencek,
  Constants.hanlarMillet,
  Constants.hanlarHaciKamil
];

final List hanlarBarutcu = [
  Constants.hanlarBarutcu,
  Constants.hanlarBarutcuOne,
];

final List hanlarGumruk = [
  Constants.tanitimImageGumrukHani,
  Constants.hanlarGumrukOne,
  Constants.hanlarGumruktwo,
];

final List hanlarMencek = [
  Constants.hanlarMencek,
  Constants.hanlarMencekOne,
  Constants.hanlarMencektwo,
];

final List hanlarMillet = [
  Constants.hanlarMillet,
  Constants.hanlarMilletOne,
  Constants.hanlarMilletTwo,
];

final List hanlarHaciKamil = [
  Constants.hanlarHaciKamil,
  Constants.hanlarHaciKamilOne,
];

final List caroselListsHanlar = [
  hanlarBarutcu,
  hanlarGumruk,
  hanlarMencek,
  hanlarMillet,
  hanlarHaciKamil,
];

class Hanlar extends StatelessWidget {
  const Hanlar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: hanlarList.length,
      itemBuilder: (context, index) {
        return ResponsiveCard(
            OnPressed: () {
              log("basıldı abiiiii");

              Get.to(() => DetailPage(
                  caroselImageList: caroselListsHanlar[index],
                  title: hanlarList[index],
                  subTitle: hanlarList[index]));
            },
            image: hanlarListImage[index],
            title: hanlarList[index]);
      },
    );
  }
}
