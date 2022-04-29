import 'package:flutter/rendering.dart';


class AppColor {
  static Color appcoloryellow = HexColor('#525252');
  static Color buttonborder = HexColor('#2D5F2E');
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}