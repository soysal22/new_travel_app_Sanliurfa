import 'package:flutter/material.dart';

class Constants {
//  Images

  // Info ( On Board )
  static const String infoImageBalikligol =
      "assets/images/info/balikligol.jpeg";
  static const String infoImageGobeklitepe =
      "assets/images/info/gobeklitepe.jpeg";
  static const String infoImageHalfeti = "assets/images/info/halfeti.jpg";

  /// Home

  //  TANITIM

  //  static const String tanitimImageHalfeti ="assets/images/tanitim/";

  static const String tanitimImageSanliurfa =
      "assets/images/tanitim/sanliurfa_tanitim.jpg";
  static const String tanitimImageHalfeti = "assets/images/tanitim/halfeti.jpg";

  static const String tanitimImageHarran =
      "assets/images/tanitim/harran-evleri.jpg";
  static const String tanitimImageHarrans = "assets/images/tanitim/harran.jpg";

  static const String tanitimImageGumrukHani =
      "assets/images/tanitim/gumruk.webp";
  static const String tanitimImageBalikligol =
      "assets/images/tanitim/balikligol.jpg";

  /// TEXTS

  // TANITIM
  static const String textSanliurfa = "ŞANLIURFA";

//  Colors
  static const Color colorBlack = Colors.black;
  static const Color colorWhite = Colors.white;
  static const Color colorBlue = Colors.blueAccent;
  static const Color colorRed = Colors.red;
  static const Color colorYellow = Colors.yellow;

// SizedBox

  // Height

  static const SizedBox sizedBoxHeigh10 = SizedBox(height: 10);
  static const SizedBox sizedBoxHeigh20 = SizedBox(height: 20);

  // Width

  static const SizedBox sizedBoxWidth10 = SizedBox(width: 10);
  static const SizedBox sizedBoxWidth20 = SizedBox(width: 20);

  // Padding
  static const EdgeInsets edgeInsetsAll10 = EdgeInsets.all(10);

  //special Padding
  static const EdgeInsets infoPaddingButton =
      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5);
}
