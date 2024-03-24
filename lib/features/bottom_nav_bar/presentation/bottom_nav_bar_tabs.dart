import 'package:chibi/core/router/app_routes.dart';
import 'package:chibi/features/bottom_nav_bar/presentation/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomNavBarTabs {
  final BuildContext context;
  BottomNavBarTabs(this.context);

  List<BottomNavBarItem> tabs() {
    final appLocalizations = AppLocalizations.of(context);

    return [
      // BottomNavBarItem(
      //   icon: SvgIcons.home,
      //   label: appLocalizations?.home ?? '',
      //   initialLocation: AppRouterPaths.home,
      // ),
      // BottomNavBarItem(
      //   icon: SvgIcons.search,
      //   label: appLocalizations?.shop ?? '',
      //   initialLocation: AppRouterPaths.shop,
      // ),
      // BottomNavBarItem(
      //   icon: SvgIcons.liveTV,
      //   label: appLocalizations?.juweloLive ?? '',
      //   initialLocation: AppRouterPaths.live,
      // ),
      //TODO has to be testet in 5.0.0
      // BottomNavBarItem(
      //   icon: SvgIcons.shoppingCart,
      //   label: appLocalizations?.shoppingCart ?? '',
      //   initialLocation: AppRouterPaths.shoppingCart,
      // ),
      // BottomNavBarItem(
      //   icon: SvgIcons.menu,
      //   label: appLocalizations?.more ?? '',
      //   iconWidget: Badges(
      //     badgeName: BadgesName.more,
      //     icon: SvgPicture.asset(
      //       SvgIcons.menu,
      //       colorFilter: ColorFilter.mode(
      //           Consts.bottomNavItemNotSelected, BlendMode.srcIn),
      //     ),
      //   ),
      //   activeIconWidget: Badges(
      //     badgeName: BadgesName.more,
      //     icon: SvgPicture.asset(
      //       SvgIcons.menu,
      //       colorFilter:
      //           ColorFilter.mode(Consts.bottomNavItemSelected, BlendMode.srcIn),
      //     ),
      //   ),
      //   initialLocation: AppRouterPaths.home,
      // ),
    ];
  }
}
