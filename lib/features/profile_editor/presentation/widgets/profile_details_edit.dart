import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/features/profile_editor/presentation/profile_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProfileDetailsEdit extends StatelessViewWithVM<ProfileVM> {
  const ProfileDetailsEdit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ProfileVM viewModel) {
    final AppLocalizations? appLocalizations = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);

    final double iconSize = MediaQuery.of(context).size.width * 0.3;
    final List<Color?> colors = [
      theme.colorScheme.secondary,
      theme.colorScheme.primary,
      theme.colorScheme.tertiary,
    ];

    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: GestureDetector(
            onTap: () => viewModel.isEditingMode = !viewModel.isEditingMode,
            child: Container(
                height: 230, width: 200, color: colors[viewModel.index])),
      );
    });
  }
}
