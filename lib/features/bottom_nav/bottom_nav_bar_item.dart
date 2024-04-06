import 'package:chibi/core/theme/consts.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends CurvedNavigationBarItem {
  final String initialLocation;

  BottomNavBarItem({
    required this.initialLocation,
    required IconData icon,
  }) : super(
            child: Icon(
          icon,
          size: 30,
        ));
}
