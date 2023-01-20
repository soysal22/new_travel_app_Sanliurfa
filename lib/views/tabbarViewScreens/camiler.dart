import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/category_title.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

//Hızanoğlu Camii
// tabakhane cami nin resmi  yok az güzel değil
// YENİ ÖMERİYE CAMİ NİN RESMİ YOK
//NİMETULLAH CAMİNİN RESMİ YOK 58 MEYDANINDAYMIŞ
// ak camide resmi yok
// Tüzeken caminin güzel resimleri yok
//Cabir El Ensar Camisi  bunu türbelerde ekle cam resmi yok
// hüseyin paşa caminin resmi yok ptt kargodan sonra yolun ortasındaki camidir
// hekim dedenin caminin resmi yok çek
// yusuf paşa caminin resmini çek zeki dondurmanın arkasında
// Siverekli Mescidi / Hz.Abbas Cami  bak
//Peygamber Cami / Circis Peygamber Cami bak
// sehbenderiye cami topçu meydanındaki
// kadioğlu caminin resmi yok
// kutbeddin cami resmi yok
// İmam Sekkâki Camii resmi  yok
// sultan bey cami resmi yok
// miskinler mescidi resmi yok
// arabi cami resim yok  yeni arabi cami sait gilin iş yerlerinin arkasında
// behramlar cami resim yok
// hayrullah cami resim yok
final List camiList = [
  "ULU CAMİ",
  "NİMETULLAH CAMİ", // Ak Camii
  "YUSUF PAŞA CAMİ",
];

final List camiListImage = [
  Constants.clicheImageGermusFront,
];

class Camiler extends StatelessWidget {
  const Camiler({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        CategoryTitle(title: "CAMİLER"),
        for (int i = 0; i < camiList.length; i++)
          ResponsiveCard(image: camiListImage[i], title: camiList[i]),
      ],
    );
  }
}
