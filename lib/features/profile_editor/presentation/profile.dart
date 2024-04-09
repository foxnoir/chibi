import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/core/theme/app_images.dart';
import 'package:chibi/features/profile_editor/presentation/profile_vm.dart';
import 'package:chibi/features/profile_editor/presentation/widgets/profile_details_btn.dart';
import 'package:chibi/features/profile_editor/presentation/widgets/profile_details_edit.dart';
import 'package:flutter/material.dart';
import 'package:chibi/core/theme/consts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Profile extends StatelessViewWithVM<ProfileVM> {
  final dynamic mockViewModel;

  const Profile({
    this.mockViewModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ProfileVM viewModel) {
    final AppLocalizations? appLocalizations = AppLocalizations.of(context);

    final double iconSize = MediaQuery.of(context).size.width * 0.3;
    final List<String?> subtitles = [
      appLocalizations?.height,
      appLocalizations?.weight,
      appLocalizations?.age,
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              AppImages.defaultProfile,
              width: iconSize,
              height: iconSize,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: Consts.globalContentPaddingXL * 2.2),
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Observer(builder: (context) {
                return viewModel.isEditingMode
                    ? const ProfileDetailsEdit(
                        key: Key('13'),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: subtitles.asMap().entries.map((entry) {
                          final String title = entry.value ?? '';
                          final int index = subtitles.indexOf(title);

                          return Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ProfileDetailsBtn(
                                key: const Key('1'),
                                title: title,
                                subtitle: title,
                                index: index,
                              ),
                            ),
                          );
                        }).toList());
              })),
        ],
      ),
    );
  }
}
