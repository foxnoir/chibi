import 'package:flutter/material.dart';

class Colours {
  static const primaryColor1 = Color(0xFF92A3FD);
  static const primaryColor2 = Color(0xFF9DCEFF);

  static const secondaryColor1 = Color(0xFFC58BF2);
  static const secondaryColor2 = Color(0xFFEEA4CE);

  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF1D1617);
  static const gray = Color(0xFF7B6F72);
  static const lightgray = Color(0xFFF7F8F8);
  static const midgray = Color(0xFFADA4A5);

  static List<Color> get primaryG => [primaryColor1, primaryColor2];
  static List<Color> get secondaryG => [secondaryColor1, secondaryColor2];
}

/// converts a Hex color into a MaterialColor
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
