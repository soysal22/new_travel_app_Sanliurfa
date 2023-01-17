// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  CategoryTitle({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
