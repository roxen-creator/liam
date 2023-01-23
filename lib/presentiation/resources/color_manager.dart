import 'package:flutter/material.dart';

class ColorManager {
  static Color kPrimaryColor = HexColor.fromHex("#FFEADO");
  static Color kSecondaryColor = HexColor.fromHex("#ded9ee");
  static Color kTextColor = HexColor.fromHex("#212121");
  static Color kButtonColor = HexColor.fromHex("#3967d6");
  static Color kBacgorundColor = HexColor.fromHex("#ffffff");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opactiy 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
