// ignore_for_file: camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';

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

class DemoIndiicator extends StatefulWidget {
  const DemoIndiicator({super.key});

  @override
  State<DemoIndiicator> createState() => _DemoIndiicatorState();
}

int _current = 0;
final CarouselController _controller = CarouselController();

class _DemoIndiicatorState extends State<DemoIndiicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Carousel with indicator controller demo',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  Image  CarouselSlider kısmı
            _imageCarouselSlider(),
            // circles sayfa page selectorları buradan ayarlıyoruz
            _pageSelector(context),
          ],
        ),
      ),
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
                Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      imgListName[imgList.indexOf(item).toInt()],
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
