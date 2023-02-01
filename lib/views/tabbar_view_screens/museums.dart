import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';
import 'package:gezi_app/core/widgets/responsive_card.dart';

final List museumsList = [
  "ŞANLIURFA MÜZESİ ", // Şalıurfa arkeoloji müzesi ile aynı isme sahip
  "İBRAHİM TATLISES MÜZİK MÜZESİ",
  "HALEPLİBAHÇE MOZAİK MÜZESİ",
  "ŞANLIURFA KENT MÜZESİ ",
  "KURTULUŞ MÜZESİ",
  "MUTFAK MÜZESİ",
  "MÜSLÜM BABA MÜZESİ",
];

final List museumsListImage = [
  Constants.museumsSanliurfa,
  Constants.museumsTatlises,
  Constants.museumsHalepli,
  Constants.museumsKent,
  Constants.museumsKurtulus,
  Constants.museumsMutfak,
  Constants.museumsMuslum,
];

class Museums extends StatelessWidget {
  const Museums({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (int i = 0; i < museumsList.length; i++)
          ResponsiveCard(image: museumsListImage[i], title: museumsList[i]),
      ],
    );
  }
}
