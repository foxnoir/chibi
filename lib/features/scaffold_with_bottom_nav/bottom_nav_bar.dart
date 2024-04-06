import 'package:chibi/features/home/presentation/home.dart';
import 'package:chibi/features/statistics/presentation/statistics.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBarTabs {
  final BuildContext context;
  BottomNavBarTabs(this.context);

  List<BottomNavBarItem> tabs() {
    return [
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: const Home(),
      ),
      BottomNavBarItem(
        icon: Icons.offline_bolt,
        initialLocation: const Statistics(),
      ),
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: const Home(),
      ),
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: const Home(),
      ),
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: const Home(),
      ),
    ];
  }
}

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
