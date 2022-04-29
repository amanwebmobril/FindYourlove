import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppTextExtraBold extends StatelessWidget {
  double size;
  final Color color;
  final String text;
  AppTextExtraBold({Key? key,
    required this.size,
    required this.text,
    this.color=Colors.black,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Text(
        text,style: TextStyle(
        color: color,
        fontFamily: 'NunitoSans',
        fontSize: size,
        fontWeight: FontWeight.w800,
      ),
      ),
    );
  }
}
