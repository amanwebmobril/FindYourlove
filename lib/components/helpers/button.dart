import 'package:findyourlove/components/apptext_semibold.dart';
import 'package:findyourlove/components/helpers/appcolor.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String btnName;
  final double width;
  final GestureTapCallback onPressed;
  const AppButton(
      {Key? key,
      required this.btnName,
      required this.onPressed,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.buttonborder),
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
                image: AssetImage("assets/buttonbgimg.png"),
                fit: BoxFit.cover)),
        child: Center(
            child: AppTextSemiBold(
          text: btnName,
          size: 16,
          color: HexColor("#2D5F2E"),
        )),
      ),
    );
  }
}
