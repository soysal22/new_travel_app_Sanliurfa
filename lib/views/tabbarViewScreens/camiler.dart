import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/category_title.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

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
  "HARRAN ULU CAMİ",
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
  Constants.camiHarran,
  Constants.camiHuseyin,
  Constants.camiKadioglu,
  Constants.camiKaraMusa,
  Constants.camiKudbettin,
  Constants.camiMevlevihane,
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
