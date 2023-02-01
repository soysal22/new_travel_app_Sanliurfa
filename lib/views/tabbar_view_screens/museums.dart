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
];

final List museumsListImage = [
  Constants.museumsSanliurfa,
  Constants.museumsTatlises,
  Constants.museumsHalepli,
  Constants.museumsKent,
  Constants.museumsKurtulus,
  Constants.museumsMutfak,
  Constants.museumsMuslum,
];

// final List museumsListImageDetail = [
//   Constants.museumsSanliurfa,
//   Constants.museumsSanliurfaOne,
//   Constants.museumsSanliurfaTwo,
//   Constants.museumsSanliurfaThree,
// ];

class Museums extends StatelessWidget {
  const Museums({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: museumsList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              log("basıldı abiiiii");

              Get.to(DetailPage(
                  imgList: museumsListImage,
                  title: museumsList[index],
                  subTitle: museumsList[index]));
            },
            child: ResponsiveCard(
                image: museumsListImage[index], title: museumsList[index]));
      },
    );
  }
}
