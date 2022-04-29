// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore: camel_case_types
class AppText_bold extends StatelessWidget {
  double size;
  final Color color;
  final String text;
  AppText_bold({
    Key? key,
    required this.size,
    required this.text,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: size,
            fontFamily: 'NunitoSans',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
