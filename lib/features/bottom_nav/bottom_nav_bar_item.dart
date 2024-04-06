import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBarItem extends CurvedNavigationBarItem {
  final dynamic initialLocation;

  BottomNavBarItem({
    required this.initialLocation,
    required IconData icon,
  }) : super(
            child: Icon(
          icon,
          size: 30,
        ));
}
