// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';
import 'package:gezi_app/views/detail_page.dart';

final List museumsList = [
  "ŞANLIURFA MÜZESİ ", // Şalıurfa arkeoloji müzesi ile aynı isme sahip
  "İBRAHİM TATLISES MÜZİK MÜZESİ",
  "HALEPLİBAHÇE MOZAİK MÜZESİ",
  "ŞANLIURFA KENT MÜZESİ ",
  "KURTULUŞ MÜZESİ",
  "MUTFAK MÜZESİ",
  "MÜSLÜM BABA MÜZESİ",
  "OYUN VE OYUNCAK MÜZESİ",
];

final List museumsListImage = [
  Constants.museumsSanliurfa,
  Constants.museumsTatlises,
  Constants.museumsHalepli,
  Constants.museumsKent,
  Constants.museumsKurtulus,
  Constants.museumsMutfak,
  Constants.museumsMuslum,
  Constants.museumsOyun,
];

final List museumsListImageDetailSanliurfa = [
  Constants.museumsSanliurfa,
  Constants.museumsSanliurfaOne,
  Constants.museumsSanliurfaTwo,
  Constants.museumsSanliurfaThree,
];

final List museumsListImageDetailTatlises = [
  Constants.museumsTatlises,
  Constants.museumsTatlisesOne,
  Constants.museumsTatlisesTwo,
];

final List museumsListImageDetailHalepli = [
  Constants.museumsHalepli,
  Constants.museumsHalepliOne,
  Constants.museumsHalepliTwo,
  Constants.museumsHalepliThree,
];

final List museumsListImageDetailKent = [
  Constants.museumsKent,
  Constants.museumsKentOne,
  Constants.museumsKentTwo,
  Constants.museumsKentThree,
];

final List museumsListImageDetailKurtulus = [
  Constants.museumsKurtulus,
  Constants.museumsKurtulusOne,
  Constants.museumsKurtulusTwo,
  Constants.museumsKurtulusThree,
];

final List museumsListImageDetailMutfak = [
  Constants.museumsMutfak,
  Constants.museumsMutfakOne,
  Constants.museumsMutfakTwo,
  Constants.museumsMutfakThree,
];

final List museumsListImageDetailMuslum = [
  Constants.museumsMuslum,
  Constants.museumsMuslumOne,
  Constants.museumsMuslumTwo,
  Constants.museumsMuslumThree,
  Constants.museumsMuslumFour,
];

final List museumsListImageDetailOyun = [
  Constants.museumsOyun,
  Constants.museumsOyunOne,
  Constants.museumsOyunTwo,
  Constants.museumsOyunThree,
];

final List caroselListsMuseums = [
  museumsListImageDetailSanliurfa,
  museumsListImageDetailTatlises,
  museumsListImageDetailHalepli,
  museumsListImageDetailKent,
  museumsListImageDetailKurtulus,
  museumsListImageDetailMutfak,
  museumsListImageDetailMuslum,
  museumsListImageDetailOyun,
];

class Museums extends StatelessWidget {
  const Museums({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: museumsList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return StreamBuilder<Object>(
            stream: null,
            builder: (context, snapshot) {
              return ResponsiveCard(
                  OnPressed: () {
                    log("basıldı abiiiii");

                    Get.to(() => DetailPage(
                        caroselImageList: caroselListsMuseums[index],
                        title: museumsList[index],
                        subTitle: museumsList[index]));
                  },
                  image: museumsListImage[index],
                  title: museumsList[index]);
            });
      },
    );
  }
}

// imageListeCek(int index) {
//   switch (index) {
//     case 0:
//       return museumsListImageDetailSanliurfa;
//     case 1:
//       return museumsListImageDetailTatlises;
//     case 2:
//       return museumsListImageDetailHalepli;
//     case 3:
//       return museumsListImageDetailKent;
//     case 4:
//       return museumsListImageDetailKurtulus;
//     case 5:
//       return museumsListImageDetailMutfak;
//     case 6:
//       return museumsListImageDetailMuslum;
//     case 7:
//       return museumsListImageDetailOyun;

//     default:
//   }
// }
