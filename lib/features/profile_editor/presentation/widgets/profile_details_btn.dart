import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/core/theme/consts.dart';
import 'package:flutter/material.dart';

class ProfileDetailsBtn extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function() onTap;
  const ProfileDetailsBtn({
    required this.title,
    required this.subtitle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(Consts.globalContentPaddingM),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(Consts.globalContentPaddingM),
          decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(Consts.radiusM),
              boxShadow: Consts.boxShadowContainer),
          child: Column(
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: Colours.primaryG,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                          Rect.fromLTRB(0, 0, bounds.width, bounds.height));
                },
                child: Text(title, style: theme.textTheme.labelLarge),
              ),
              Text(subtitle, style: theme.textTheme.labelMedium),
            ],
          ),
        ),
      ),
    );
  }
}
