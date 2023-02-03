// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/carossel_detail.dart';

class DetailPage extends StatelessWidget {
  DetailPage({
    super.key,
    required this.caroselImageList,
    required this.title,
    required this.subTitle,
  });

  List caroselImageList;

  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constants.colorTranspartent,
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
              color: Constants.colorRed,
              borderRadius: BorderRadius.circular(10)),
          child: IconButton(
              onPressed: Get.back,
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Constants.colorBlack,
                size: 30,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            DetailCaroselWidgetAndSelector(imgList: caroselImageList),
            Constants.sizedBoxHeigh20,
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            Constants.sizedBoxHeigh20,
            Text(
              subTitle,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
