import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/category_title.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

final List museumsList = [
  "GERMUŞ KİLİSESİ",
];

final List museumsListImage = [
  Constants.clicheImageGermusFront,
];

class Museums extends StatelessWidget {
  const Museums({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        CategoryTitle(title: "MUSEUMS"),
        for (int i = 0; i < museumsList.length; i++)
          ResponsiveCard(image: museumsListImage[i], title: museumsList[i]),
        for (int i = 0; i < museumsList.length; i++)
          ResponsiveCard(image: museumsListImage[i], title: museumsList[i]),
      ],
    );
  }
}
