import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/core/theme/layout.dart';
import 'package:chibi/features/scaffold_with_bottom_nav/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:chibi/features/scaffold_with_bottom_nav/scaffold_with_bottom_nav_vm.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ScaffoldWithBottomNav
    extends StatelessViewWithVM<ScaffoldWithBottomNavVM> {
  final Widget child;
  final String title;
  final String? bgImg;
  const ScaffoldWithBottomNav({
    Key? key,
    required this.child,
    required this.title,
    this.bgImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScaffoldWithBottomNavVM viewModel) {
    final ThemeData theme = Theme.of(context);

    return Observer(builder: (context) {
      return Stack(
        children: [
          bgImg != null
              ? Image.asset(
                  bgImg!,
                  height: getHeight(context),
                  width: getWidth(context),
                  fit: BoxFit.cover,
                )
              : Container(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(title),
            ),
            body: BottomNavBarTabs(context)
                .tabs(index: viewModel.index)[viewModel.index]
                .initialLocation,
            bottomNavigationBar: CurvedNavigationBar(
                color: theme.colorScheme.primary.withOpacity(0.2),
                buttonBackgroundColor:
                    theme.colorScheme.secondary.withOpacity(0.1),
                backgroundColor: theme.colorScheme.background,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 300),
                index: DefaultIntex.index,
                items: BottomNavBarTabs(context).tabs(index: viewModel.index),
                onTap: (index) => viewModel.index = index),
          ),
        ],
      );
    });
  }
}
