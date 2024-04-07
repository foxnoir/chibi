import 'package:chibi/core/theme/app_icons.dart';
import 'package:chibi/features/home/presentation/home.dart';
import 'package:chibi/features/profile/presentation/profile.dart';
import 'package:chibi/features/statistics/presentation/statistics.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBarTabs {
  final BuildContext context;
  BottomNavBarTabs(this.context);

  List<BottomNavBarItem> tabs({required int index}) {
    return [
      BottomNavBarItem(
        icon: AppIcons.home,
        activeIcon: AppIcons.homeActive,
        initialLocation: const Home(),
        isActive: index == 0,
      ),
      BottomNavBarItem(
        icon: AppIcons.statistics,
        activeIcon: AppIcons.statisticsActive,
        initialLocation: const Statistics(),
        isActive: index == 1,
      ),
      BottomNavBarItem(
        icon: AppIcons.workout,
        activeIcon: AppIcons.workoutActive,
        initialLocation: const Home(),
        isActive: index == 2,
      ),
      BottomNavBarItem(
        icon: AppIcons.video,
        activeIcon: AppIcons.videoActive,
        initialLocation: const Home(),
        isActive: index == 3,
      ),
      BottomNavBarItem(
        icon: AppIcons.profile,
        activeIcon: AppIcons.profileActive,
        initialLocation: const Profile(),
        isActive: index == 4,
      ),
    ];
  }
}

class BottomNavBarItem extends CurvedNavigationBarItem {
  final dynamic initialLocation;
  final String icon;
  final String activeIcon;
  final bool isActive;

  BottomNavBarItem({
    required this.initialLocation,
    required this.icon,
    required this.activeIcon,
    required this.isActive,
  }) : super(
          child: Image.asset(
            isActive ? activeIcon : icon,
            width: 25,
            height: 25,
            fit: BoxFit.fitWidth,
          ),
        );
}
