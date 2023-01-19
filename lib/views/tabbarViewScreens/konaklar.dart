import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/category_title.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

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

class Konaklar extends StatelessWidget {
  const Konaklar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: konaklarList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CategoryTitle(title: "KONAKLAR"),
            ResponsiveCard(
                image: konaklarListImage[index], title: konaklarList[index]),
          ],
        );
      },
    );
  }
}
