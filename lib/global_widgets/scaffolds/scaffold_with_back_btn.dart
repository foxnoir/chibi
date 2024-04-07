import 'package:chibi/core/theme/app_icons.dart';
import 'package:chibi/core/theme/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithBackButton extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavBar;
  final Widget? bottomButton;
  final Widget? bottomSheet;
  final PreferredSizeWidget? appBarBottom;
  final Widget? actions;
  final String? title;
  final void Function()? onPressedBack;

  const ScaffoldWithBackButton({
    required this.child,
    this.title,
    this.bottomNavBar,
    this.bottomButton,
    this.bottomSheet,
    this.actions,
    this.onPressedBack,
    this.appBarBottom,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          leading: IconButton(
            onPressed: () =>
                onPressedBack != null ? onPressedBack!() : context.pop(),
            icon: SvgPicture.asset(
              height: Consts.globalIconSizeM * 1.2,
              AppIcons.arrowLeft,
            ),
          ),
          title: Text(title ?? ''),
          automaticallyImplyLeading: true,
          actions: actions != null ? [actions!] : null,
          bottom: appBarBottom),
      body: child,
      bottomNavigationBar: bottomButton,
      bottomSheet: bottomSheet,
    );
  }
}
