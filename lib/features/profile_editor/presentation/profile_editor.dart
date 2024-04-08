import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/core/theme/app_images.dart';
import 'package:chibi/core/theme/consts.dart';
import 'package:chibi/core/theme/layout.dart';
import 'package:chibi/features/profile/presentation/widgets/title_subtitle_cell.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:chibi/features/profile_editor/presentation/profile_editor_vm.dart';
import 'package:chibi/global_widgets/scaffold_with_back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProfileEditor extends StatelessViewWithVM<ProfileEditorVM> {
  final dynamic mockViewModel;
  const ProfileEditor({
    this.mockViewModel,
    Key? key,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  @override
  Widget build(BuildContext context, ProfileEditorVM viewModel) {
    final AppLocalizations? appLocalizations = AppLocalizations.of(context);
    final double iconSize = getWidth(context) * 0.3;

    return Observer(builder: (context) {
      return ScaffoldWithBackButton(
        bgImg: AppImages.scaffoldBg,
        title: appLocalizations?.editProfile ?? '',
        child: Padding(
          padding: const EdgeInsets.only(top: Consts.globalContentPaddingL),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Consts.radiusL),
                child: Image.asset(
                  AppImages.defaultProfile,
                  width: iconSize,
                  height: iconSize,
                  fit: BoxFit.cover,
                ),
              ),
              const Row(
                children: [
                  Expanded(
                    child: TitleSubtitleCell(
                      title: '180cm',
                      subtitle: 'Height',
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TitleSubtitleCell(
                      title: '65kg',
                      subtitle: 'Weight',
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TitleSubtitleCell(
                      title: '22yo',
                      subtitle: 'Age',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
