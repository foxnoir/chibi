import 'package:chibi/core/theme/app_icons.dart';
import 'package:chibi/core/theme/colours.dart';
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
  final Color? appBarBgColor;
  final String? bgImg;
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
    this.appBarBgColor,
    this.bgImg,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Since I'm not a designer and can't create svgs to make a custom paint, I put a png here.
        // Not recommended.
        bgImg != null
            ? Image.asset(
                bgImg!,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )
            : Container(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: appBarBgColor ?? Colours.white,
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
        ),
      ],
    );
  }
}
