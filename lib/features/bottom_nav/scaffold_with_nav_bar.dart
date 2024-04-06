import 'package:chibi/core/router/app_router.dart';
import 'package:chibi/features/bottom_nav/bottom_nav_bar_tabs.dart';
import 'package:chibi/features/home/presentation/home.dart';
import 'package:chibi/features/statistics/presentation/statistics.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  final Widget child;
  final String? title;

  const ScaffoldWithNavBar({
    Key? key,
    required this.child,
    this.title,
  }) : super(key: key);

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int get _currentIndex => _locationToTabIndex(appRouter.location);
  int index = 0;

  int _locationToTabIndex(String location) {
    index = BottomNavBarTabs(context)
        .tabs()
        .indexWhere((t) => location == t.initialLocation);
    return index < 0 ? 0 : index;
  }

  // callback used to navigate to the desired tab
  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      print(tabIndex);
      print(_currentIndex);
      context.pushReplacementNamed(
          BottomNavBarTabs(context).tabs()[tabIndex].initialLocation);
    }
  }

  final screens = [
    const Home(),
    const Statistics(),
    const Home(),
    const Home(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.title ?? '',
                overflow: TextOverflow.ellipsis,
              )),
        ),
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
            index: _currentIndex,
            items: BottomNavBarTabs(context).tabs(),
            onTap: (index) => setState(() {
                  this.index = index;
                })));
  }
}
