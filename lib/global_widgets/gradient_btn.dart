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
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colours.black.withOpacity(0.3),
                blurRadius: 2,
                offset: const Offset(0, 2))
          ]),
      child: MaterialButton(
        minWidth: double.maxFinite,
        height: 50,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        textColor: theme.colorScheme.tertiary,
        child: Text(title, style: theme.textTheme.titleSmall),
      ),
    );
  }
}
