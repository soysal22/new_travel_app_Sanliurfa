// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:gezi_app/core/constants/constants.dart';

/// image i String olarak yol vereceğiz

class ResponsiveCard extends StatelessWidget {
  ResponsiveCard(
      {super.key,
      required this.image,
      required this.title,
      required this.OnPressed});
  String image;
  String title;

  Function() OnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: OnPressed,
        child: Stack(
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                // kard için border
                borderRadius: Constants.borderRadius20,
              ),
              child: _image(context),
            ),
            _title(context)
          ],
        ),
      ),
    );
  }

  ClipRRect _image(BuildContext context) {
    return ClipRRect(
      // Image  için border
      borderRadius: Constants.borderRadius20,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4.5,
      ),
    );
  }

  Positioned _title(BuildContext context) {
    return Positioned(
        bottom: 20,
        left: 30,
        child: Container(
          color: Constants.colorResponsiveCardColor,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: const Color.fromARGB(233, 255, 255, 255)),
          ),
        ));
  }
}
