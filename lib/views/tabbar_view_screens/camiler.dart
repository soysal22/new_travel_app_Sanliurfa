import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';
import 'package:gezi_app/views/detail_page.dart';

// rızvaniye cami balıklıgölün karşı tarafındaki cami
// mevlidi halil cami halilur rahman ile aynı isme sahip
// CARHOĞLU CAMİ RESMİ YOK
// ESKİ ÖMERİYE CAMİ RESMİ YOK
// CİRCİS CAMİ DAHA İYİ RESİM ÇEK
// hasan paşa cami resmi yok balıklı göl girişindeki cami attarcılar tarafından gelince
//Hızanoğlu Camii
// tabakhane cami nin resmi  yok az güzel değil
// YENİ ÖMERİYE CAMİ NİN RESMİ YOK
//NİMETULLAH CAMİNİN RESMİ YOK 58 MEYDANINDAYMIŞ
// ak camide resmi yok
// mevlevi hane cami resim yok
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
// İmam Sekkâki Cami resmi  yok
// imambakır hassan olması lazım ismi onu türbeler kısmına ekleyebiliriz
// sultan bey cami resmi yok
// miskinler mescidi resmi yok
// arabi cami resim yok  yeni arabi cami sait gilin iş yerlerinin arkasında
// behramlar cami resim yok
// hayrullah cami resim yok
// hacı lütfi foto çok az
//Çakeri Cami foto yok
// Hızanoğlu Cami foto yok
//Damat Süleyman Paşa Cami  foto yok  eski belediyenin arkawsındaki cami
// Eski Sefalı Cami  foto yok
//Müderris Cami foto yok
//Nur Ali cami arap meydanını aşağı girişinde ki mescidtir
// toktemur mescidinin resmi yok  Hasan Padişah Camii’nin doğusuna bitişik miş

final List camiList = [
  "HALİLÜR RAHMAN CAMİ",
  "ULU CAMİ",
  "EYYÜP PEYGAMBER CAMİ",
  "RIZVANİYE CAMİ",
  "SELAHATTİN EYYUBİ CAMİ",
  "HASAN PAŞA CAMİ",
  "FIRFIRLI CAMİ", // On İki Havari Kilisesi Aziz Havariler Kilisesi
  "YUSUF PAŞA CAMİ",
  "CİRCİS PEYGAMBER CAMİ",
  "HACI YADİGAR CAMİ",
  "HÜSEYİN PAŞA CAMİ",
  "KADIOĞLU CAMİ",
  "KARA MUSA CAMİ",
  "KUTBEDDİN CAMİ",
  "MEVLEVİHANE CAMİ ",
];

final List camiListImage = [
  Constants.camiHalilur,
  Constants.camiUlu,
  Constants.camiEyyup,
  Constants.camiRizvaniye,
  Constants.camiSelahattin,
  Constants.camiHasan,
  Constants.camiFirfirli,
  Constants.camiYusuf,
  Constants.camiCircis,
  Constants.camiHaci,
  Constants.camiHuseyin,
  Constants.camiKadioglu,
  Constants.camiKaraMusa,
  Constants.camiKudbettin,
  Constants.camiMevlevihane,
];

final List camiHalilur = [
  Constants.camiHalilur,
  Constants.camiHalilurOne,
  Constants.camiHalilurTwo,
];

final List camiUlu = [
  Constants.camiUlu,
  Constants.camiUluOne,
  Constants.camiUluTwo,
  Constants.camiUluThree,
  Constants.camiUluFour,
];

final List camiEyyup = [
  Constants.camiEyyup,
  Constants.camiEyyupOne,
  Constants.camiEyyupTwo,
  Constants.camiEyyupThree,
  Constants.camiEyyupFour,
];

final List camiRizvaniye = [
  Constants.camiRizvaniye,
];

final List camiSelahattin = [
  Constants.camiSelahattin,
  Constants.camiSelahattinOne,
  Constants.camiSelahattinTwo,
  Constants.camiSelahattinThree,
  Constants.camiSelahattinFour,
];

final List camiHasan = [
  Constants.camiHasan,
  Constants.camiHasanOne,
  Constants.camiHasanTwo,
  Constants.camiHasanThree,
];

final List camiFirfirli = [
  Constants.camiFirfirli,
  Constants.camiFirfirliOne,
  Constants.camiFirfirliTwo,
  Constants.camiFirfirli,
];

final List camiYusuf = [
  Constants.camiYusuf,
  Constants.camiYusufOne,
  Constants.camiYusufTwo,
];

final List camiCircis = [
  Constants.camiCircis,
  Constants.camiCircisOne,
  Constants.camiCircisTwo,
];

final List camiHaci = [
  Constants.camiHaci,
  Constants.camiHaciOne,
  Constants.camiHaciTwo,
];

final List camiHuseyin = [
  Constants.camiHuseyin,
  Constants.camiHuseyinOne,
  Constants.camiHuseyinTwo,
];

final List camiKadioglu = [
  Constants.camiKadioglu,
  Constants.camiKadiogluOne,
];

final List camiKaraMusa = [
  Constants.camiKaraMusa,
  Constants.camiKaraMusaOne,
  Constants.camiKaraMusaTwo,
  Constants.camiKaraMusaThree,
];

final List camiKudbettin = [
  Constants.camiKudbettin,
];

final List camiMevlevihane = [
  Constants.camiMevlevihane,
];
final List caroselListsCamiler = [
  camiHalilur,
  camiUlu,
  camiEyyup,
  camiRizvaniye,
  camiSelahattin,
  camiHasan,
  camiFirfirli,
  camiYusuf,
  camiCircis,
  camiHaci,
  camiHuseyin,
  camiKadioglu,
  camiKaraMusa,
  camiKudbettin,
  camiMevlevihane,
];

class Camiler extends StatelessWidget {
  const Camiler({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: camiList.length,
      itemBuilder: (context, index) {
        return ResponsiveCard(
            OnPressed: () {
              log("basıldı abiiiii");

              Get.to(() => DetailPage(
                  caroselImageList: caroselListsCamiler[index],
                  title: camiList[index],
                  subTitle: camiList[index]));
            },
            image: camiListImage[index],
            title: camiList[index]);
      },
    );
  }
}
