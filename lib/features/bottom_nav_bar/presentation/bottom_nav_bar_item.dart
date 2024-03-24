import 'package:chibi/core/theme/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  BottomNavBarItem({
    required this.initialLocation,
    required String icon,
    required String label,
    Widget? iconWidget,
    Widget? activeIconWidget,
  }) : super(
          label: label,
          icon: iconWidget ??
              SvgPicture.asset(icon,
                  colorFilter: ColorFilter.mode(
                      Consts.bottomNavItemNotSelected, BlendMode.srcIn),
                  width: Consts.navIconWidth),
          activeIcon: activeIconWidget ??
              SvgPicture.asset(icon,
                  colorFilter: ColorFilter.mode(
                      Consts.bottomNavItemSelected, BlendMode.srcIn),
                  width: Consts.navIconWidth),
        );
}
