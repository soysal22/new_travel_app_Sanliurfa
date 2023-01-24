import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/info_title_text.dart';
import 'package:gezi_app/core/widgets/info_subtitle_text.dart';
import 'package:gezi_app/views/bottombar_page.dart';
import 'package:gezi_app/views/splash_page.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final pageController = PageController();

  var pageImageList = [
    Image.asset(Constants.infoImageHalfeti, fit: BoxFit.cover),
    Image.asset(Constants.infoImageGobeklitepe, fit: BoxFit.fitHeight),
    Image.asset(Constants.infoImageBalikligol, fit: BoxFit.cover),
  ];
  int pageLength = 0;
  List infoTitle = [
    "HALFETİ",
    "GÖBEKLİ TEPE",
    "BALIKLIGÖL",
  ];

  List infoSubtitle = [
    "Acının en tatlı olduğu şehre hosgelidiniz",
    // "Tarihiyle Eşsiz Bir Mekan",
    "Tarihin sıfır noktasına hosgeldiniz",
    "keşfetmeye devam etmek için ",
  ];

  List infoDetailText = [
    "Şanlıurfa'nın ilçelerinden biri olan ve “Karagül Diyarı” olarak da bilinen Halfeti; kendine özgü mimari yapısı, doğal güzellikleri ve siyah gülleri ile Türkiye'nin önemli turizm noktalarından biridir.",
    "Balıklıgöl , Şanlıurfa şehir merkezinin güneybatısında yer alan ve İbrahim peygamberin ateşe atıldığına inanılan bu iki göl, mitolojik olarak İslam alemi için kutsal sayılan balıkları  ve çevrelerindeki tarihi eserler ile Şanlıurfa'nın en çok ziyaret edilen tarihî mekanlarındandır",
    "Göbeklitepe , Şanlıurfa il merkezinin 18 km kuzeydoğusunda, Örencik köyü yakınlarında yer alan dünyanın bilinen en eski kült yapılar topluluğudur. ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _pageSelector(),
      body: Stack(
        children: [
          _pageViewImage(),
          Container(
            margin: const EdgeInsets.only(top: 50, left: 20),
            // boşluğu benim bırakmama yaryan komut

            child: Wrap(
              direction: Axis.vertical,
              spacing: 10,
              children: [
                InfoTitleText(
                  text: infoTitle[pageLength],
                ),
                InfoSubtitleText(
                  text: infoSubtitle[pageLength],
                  size: 21,
                ),
                if (pageLength + 1 == pageImageList.length)
                  _navigatorButton(context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _navigatorButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: Constants.infoPaddingButton,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          setState(() {
            prefs?.setBool('change', true);
            Get.to(() => const BottomBarPageView());
          });
        },
        child: const Icon(
          Icons.arrow_right_alt_outlined,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }

  // Sayfanın resimlerinin olduğu yer

  PageView _pageViewImage() {
    return PageView(
      onPageChanged: (value) {
        setState(() {
          pageLength = value;
        });
        log(value.toString());
      },
      controller: pageController,
      children: pageImageList,
    );
  }

  // sayfanın değeri altta çubuk gibi kaydırıldığında gösterilmesini sağlayan yapı

  Row _pageSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageImageList.length,
        (indexDots) {
          return Container(
            margin: const EdgeInsets.only(right: 3, bottom: 8),
            width: pageLength == indexDots ? 50 : 40,
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: pageLength == indexDots
                  ? Constants.colorRed
                  : Constants.colorWhite.withOpacity(0.80),
            ),
          );
        },
      ),
    );
  }
}
