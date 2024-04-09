import 'package:chibi/core/theme/consts.dart';
import 'package:chibi/core/theme/layout.dart';
import 'package:flutter/material.dart';
import 'package:chibi/core/theme/colours.dart';

enum GradientBtnType { primaryBG, secondaryBG }

class GradientBtn extends StatelessWidget {
  final String title;
  final GradientBtnType type;
  final Function() onPressed;

  const GradientBtn({
    required this.title,
    required this.onPressed,
    this.type = GradientBtnType.secondaryBG,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: type == GradientBtnType.secondaryBG
                  ? Colours.secondaryG
                  : Colours.primaryG,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(Consts.radiusL),
          boxShadow: Consts.boxShadowBtn),
      child: MaterialButton(
        minWidth: double.maxFinite,
        height: getWidth(context) * 0.22,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        textColor: theme.colorScheme.tertiary,
        child: Text(title, style: theme.textTheme.titleSmall),
      ),
    );
  }
}
