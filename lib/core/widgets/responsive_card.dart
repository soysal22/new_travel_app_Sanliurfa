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
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              // kard için border
              borderRadius: Constants.borderRadius20,
            ),
            child: ClipRRect(
              // Image  için border
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
