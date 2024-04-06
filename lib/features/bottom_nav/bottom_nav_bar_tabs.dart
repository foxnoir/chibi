import 'package:chibi/core/router/app_router_consts.dart';
import 'package:chibi/features/bottom_nav/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBarTabs {
  final BuildContext context;
  BottomNavBarTabs(this.context);

  List<BottomNavBarItem> tabs() {
    return [
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: AppRouterPaths.home,
      ),
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: AppRouterPaths.home,
      ),
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: AppRouterPaths.home,
      ),
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: AppRouterPaths.home,
      ),
      BottomNavBarItem(
        icon: Icons.home,
        initialLocation: AppRouterPaths.home,
      ),
    ];
  }
}
