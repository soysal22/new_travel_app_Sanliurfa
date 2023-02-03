// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailCaroselWidgetAndSelector extends StatefulWidget {
  DetailCaroselWidgetAndSelector({
    super.key,
    required this.imgList,
    this.imgListName,
  });
  List imgList;
  List? imgListName;
  @override
  State<DetailCaroselWidgetAndSelector> createState() =>
      _DetailCaroselWidgetAndSelectorState();
}

int _current = 0;
final CarouselController _controller = CarouselController();

class _DetailCaroselWidgetAndSelectorState
    extends State<DetailCaroselWidgetAndSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              // height: 600,
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: widget.imgList
              .map((item) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.grey.shade700,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:
                          Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                    ),
                  ))
              .toList(),
        ),
        _pageSelector(context),
      ],
    );
  }

  Row _pageSelector(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.imgList.asMap().entries.map((entry) {
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
                    .withOpacity(_current == entry.key ? 1 : 0.4)),
          ),
        );
      }).toList(),
    );
  }
}
