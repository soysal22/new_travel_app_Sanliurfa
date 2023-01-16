// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';

/// image i String olarak yol vereceğiz

class ResponsiveCard extends StatelessWidget {
  ResponsiveCard({super.key, required this.image, required this.title});
  String image;
  String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Card(

          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: Constants.borderRadius20,
          ),
          child: ClipRRect(
            borderRadius: Constants.borderRadius20,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
            ),
          ),
        ),
        _title(context)
      ],
    );
  }

  Positioned _title(BuildContext context) {
    return Positioned(
        bottom: 20,
        left: 30,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Constants.colorWhite),
        ));
  }
}
