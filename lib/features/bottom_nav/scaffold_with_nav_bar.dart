import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:flutter/material.dart';
import 'package:chibi/features/bottom_nav/bottom_nav_bar_tabs.dart';
import 'package:chibi/features/bottom_nav/scaffold_with_nav_bar_vm.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ScaffoldWithNavBar extends StatelessViewWithVM<ScaffoldWithNavBarVM> {
  final Widget child;
  final String? title;
  const ScaffoldWithNavBar({
    Key? key,
    required this.child,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScaffoldWithNavBarVM viewModel) {
    return Observer(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title ?? '',
                overflow: TextOverflow.ellipsis,
              )),
        ),
        body: BottomNavBarTabs(context).tabs()[viewModel.index].initialLocation,
        bottomNavigationBar: CurvedNavigationBar(
            index: viewModel.index,
            items: BottomNavBarTabs(context).tabs(),
            onTap: (index) => viewModel.index = index),
      );
    });
  }
}
