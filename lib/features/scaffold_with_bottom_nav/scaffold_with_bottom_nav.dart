import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/features/scaffold_with_bottom_nav/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:chibi/features/scaffold_with_bottom_nav/scaffold_with_bottom_nav_vm.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ScaffoldWithBottomNav
    extends StatelessViewWithVM<ScaffoldWithBottomNavVM> {
  final Widget child;
  final String? title;
  const ScaffoldWithBottomNav({
    Key? key,
    required this.child,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScaffoldWithBottomNavVM viewModel) {
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
