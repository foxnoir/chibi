import 'package:chibi/features/bottom_nav/bottom_nav_bar_item.dart';
import 'package:chibi/features/home/presentation/home.dart';
import 'package:chibi/features/statistics/presentation/statistics.dart';
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
