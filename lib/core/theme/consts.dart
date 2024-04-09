import 'package:chibi/core/theme/colours.dart';
import 'package:flutter/material.dart';

class Consts {
  // padding
  static const double globalContentPaddingS = 6.0;
  static const double globalContentPaddingM = 10.0;
  static const double globalContentPaddingL = 20.0;
  static const double globalContentPaddingXL = 33.0;

// radius
  static const double radiusS = 6.0;
  static const double radiusM = 15.0;
  static const double radiusL = 25.0;
  static const double radiusRound = 30.0;

// elevation
  static const double elevation = 4.0;

  static const double borderThin = 1;
  static const double borderThick = 2;

  // icons
  static const double navIconSize = 25;
  static const double backBtnSize = 25;

  // boxshadows
  static List<BoxShadow> boxShadowBtn = [
    BoxShadow(
        color: Colours.black.withOpacity(0.3),
        blurRadius: 2,
        offset: const Offset(0, 2))
  ];
  static List<BoxShadow> boxShadowContainer = [
    BoxShadow(color: Colours.black.withOpacity(0.3), blurRadius: 2)
  ];
}
