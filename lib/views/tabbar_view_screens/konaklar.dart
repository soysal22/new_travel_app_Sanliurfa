import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';
import 'package:gezi_app/views/detail_page.dart';

final List konaklarList = [
  "CEVAHİR KONAĞI", //HACI MUSTAFA HACIKAMİLOĞLU KONAĞI ESKİ İSMİ
  "TBMM EVİ (Şahap Bakır Evi \n- İsa Beden Evi)",
  "MAHMUT NEDİM EFENDİ KONAĞI", // kurtuluş müzesi tatlises müslüm baba üzesi
  "ŞAİR SAKIP EFENDİ KONAĞI",
  "FEYZULLAH EFENDİ KONAĞI", //halfeti
  "VİLAYET KONAK EVİ",
  "TÜRKMEN KONUK EVİ ",
  "ELRUHA KONUK EVİ",
  "GÜLİZAR KONUK EVİ",
  "KÖY YATI MEKTEBİ",
  "ELÇİ KONUK EVİ"
];

final List konaklarListImage = [
  Constants.konakCevahir,
  Constants.konakTbmm,
  Constants.konakMahmut,
  Constants.konakSair,
  Constants.konakFeyzullah,
  Constants.konakVilayet,
  Constants.konakTurkmen,
  Constants.konakElruha,
  Constants.konakGulizar,
  Constants.konakKoyYati,
  Constants.konakElci,
];

final List konakCevahir = [
  Constants.konakCevahir,
  Constants.konakCevahirOne,
  Constants.konakCevahirTwo,
];

final List konakTbmm = [
  Constants.konakTbmm,
  Constants.konakTbmmOne,
  Constants.konakTbmmTwo,
  Constants.konakTbmmThree,
];

final List konakMahmut = [
  Constants.konakMahmut,
  Constants.konakMahmutOne,
  Constants.konakMahmutTwo,
  Constants.konakMahmutThree,
];

final List konakSair = [
  Constants.konakSair,
  Constants.konakSairOne,
  Constants.konakSairTwo,
  Constants.konakSairThree,
];

final List konakFeyzullah = [
  Constants.konakFeyzullah,
  Constants.konakFeyzullahOne,
  Constants.konakFeyzullahTwo,
  Constants.konakFeyzullahThree,
];

final List konakVilayet = [
  Constants.konakVilayet,
  Constants.konakVilayetOne,
  Constants.konakVilayetTwo,
  Constants.konakVilayetThree,
];

final List konakTurkmen = [
  Constants.konakTurkmen,
  Constants.konakTurkmenOne,
  Constants.konakTurkmenTwo,
  Constants.konakTurkmenThree,
  Constants.konakTurkmenfour,
];

final List konakElruha = [
  Constants.konakElruha,
  Constants.konakElruhaOne,
  Constants.konakElruhaTwo,
];

final List konakGulizar = [
  Constants.konakGulizar,
  Constants.konakGulizarOne,
  Constants.konakGulizarTwo,
  Constants.konakGulizarThree,
];

final List konakKoyYati = [
  Constants.konakKoyYati,
  Constants.konakKoyYatiOne,
];

final List konakElci = [
  Constants.konakElci,
  Constants.konakElciOne,
  Constants.konakElciTwo,
  Constants.konakElciThree,
];

final List caroselListsHanlar = [
  konakCevahir,
  konakTbmm,
  konakMahmut,
  konakSair,
  konakFeyzullah,
  konakVilayet,
  konakTurkmen,
  konakElruha,
  konakGulizar,
  konakKoyYati,
  konakElci,
];

class Konaklar extends StatelessWidget {
  const Konaklar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: konaklarList.length,
      itemBuilder: (context, index) {
        return ResponsiveCard(
            OnPressed: () {
              log("basıldı abiiiii");

              Get.to(() => DetailPage(
                  caroselImageList: caroselListsHanlar[index],
                  title: konaklarList[index],
                  subTitle: konaklarList[index]));
            },
            image: konaklarListImage[index],
            title: konaklarList[index]);
      },
    );
  }
}
