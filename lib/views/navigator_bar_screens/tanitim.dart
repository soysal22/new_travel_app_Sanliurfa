// ignore_for_file: camel_case_types, unused_element

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/carosel.dart';

final List imgList = [
  Constants.tanitimImageSanliurfa,
  Constants.tanitimImageBalikligol,
  Constants.tanitimImageHalfeti,
  Constants.tanitimImageHarrans,
  Constants.tanitimImageGumrukHani,
];
final List imgListName = [
  "Şanlıurfa Kalesi",
  "BalıklıGöl",
  "Halfeti",
  "Harran Evleri ",
  "Gümrük Hanı",
];

class TanitimPage extends StatefulWidget {
  const TanitimPage({super.key});

  @override
  State<TanitimPage> createState() => _TanitimPageState();
}

int _current =
    0; // page selector için anlık sayfa değerini yakalayabilmek için kullanıyorum
final CarouselController _controller = CarouselController();

class _TanitimPageState extends State<TanitimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: _appbarDesign(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CaroselWidgetAndSelector(
                imgList: imgList, imgListName: imgListName),
            Constants.sizedBoxHeigh20,
            Text(Constants.textSanliurfa,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontSize: 30,
                    color: Constants.colorBlack,
                    fontWeight: FontWeight.bold)),
            Constants.sizedBoxHeigh20,
            Text("Açıklama  \n\nama ne yazağımı bilmiyorum ",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontSize: 30,
                    color: Constants.colorBlack,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  AppBar _appbarDesign() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(
        "ŞANLIURFA",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Constants.colorWhite),
      ),
      actions: [
        Row(
          children: const [
            Icon(
              Icons.sunny,
              size: 30,
              color: Constants.colorYellow,
            ),
            Constants.sizedBoxWidth10,
            Text(
              "16 ' C ",
              style: TextStyle(fontSize: 25, color: Constants.colorWhite),
            )
          ],
        )
      ],
    );
  }

  CarouselSlider _imageCarouselSlider() {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
      items: imageSliders,
    );
  }

  Row _pageSelector(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imgList.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                    .withOpacity(_current == entry.key ? 0.9 : 0.4)),
          ),
        );
      }).toList(),
    );
  }
}

// Image ve textlerin işlendiği yer

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.grey.shade700,
                //offset: Offset(10.0, 10.0),
              )
            ],
          ),
          //   margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: <Widget>[
                Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    // decoration: const BoxDecoration(
                    //   gradient: LinearGradient(
                    //     colors: [
                    //       Color.fromARGB(200, 0, 0, 0),
                    //       Color.fromARGB(0, 0, 0, 0),
                    //     ],
                    //     begin: Alignment.bottomCenter,
                    //     end: Alignment.topCenter,
                    //   ),
                    // ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      imgListName[imgList.indexOf(item).toInt()],
                      // gelen resim değerinin int karşılığı olan 1 2 gibi sayısal bir değer olsun ki
                      // resimler gibi alttaki yazılarda onunla beraber anlık olarak değişsin diye  gelen item ın int değerine eşitledim
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ))
    .toList();
