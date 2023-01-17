import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

final List kliseList = [
  "GERMUŞ KİLİSESİ",
  "REJİ KİLİSESİ (AZİZ PETRUS KİLİSESİ)",
  "DEYR-İ YAKUB (YAKUB MANASTIRI)",
];

final List kliseListImage = [
  Constants.clicheImageGermusFront,
  Constants.clicheImageReji,
  Constants.clicheImageYakup
];

class Camiler extends StatelessWidget {
  const Camiler({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          textAlign: TextAlign.center,
          "Camiler",
          style: Theme.of(context).textTheme.headline6,
        ),
        Constants.sizedBoxHeigh20,
        for (int i = 0; i < kliseList.length; i++)
          ResponsiveCard(image: kliseListImage[i], title: kliseList[i]),
        for (int i = 0; i < kliseList.length; i++)
          ResponsiveCard(image: kliseListImage[i], title: kliseList[i]),
      ],
    );
  }
}
