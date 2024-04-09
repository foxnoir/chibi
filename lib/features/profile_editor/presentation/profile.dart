import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/core/theme/app_images.dart';
import 'package:chibi/core/theme/consts.dart';
import 'package:chibi/core/theme/layout.dart';
import 'package:chibi/features/profile_editor/presentation/profile_vm.dart';
import 'package:chibi/features/profile_editor/presentation/widgets/profile_details_btn.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:chibi/global_widgets/scaffold_with_back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Profile extends StatelessViewWithVM<ProfileVM> {
  final dynamic mockViewModel;
  const Profile({
    this.mockViewModel,
    Key? key,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  // keys for widget tests
  static const ValueKey switch1 = ValueKey('switch1');
  static const ValueKey switch2 = ValueKey('switch2');

  @override
  Widget build(BuildContext context, ProfileVM viewModel) {
    final AppLocalizations? appLocalizations = AppLocalizations.of(context);
    final double iconSize = getWidth(context) * 0.3;

    final List<String> titles = [
      appLocalizations?.height ?? '',
      appLocalizations?.weight ?? '',
      appLocalizations?.age ?? '',
    ];

    // Define your detailsBtn list here
    final List<List<Widget>> detailsBtn = [
      [
        ProfileDetailsBtn(
          title: '180cm',
          subtitle: 'Height',
          onTap: () {},
        ),
        ProfileDetailsBtn(
          title: '65kg',
          subtitle: 'Weight',
          onTap: () {},
        ),
        ProfileDetailsBtn(
          title: '22yo',
          subtitle: 'Age',
          onTap: () {},
        ),
      ]
    ];

    return Observer(builder: (context) {
      return ScaffoldWithBackButton(
        bgImg: AppImages.scaffoldBg,
        title: appLocalizations?.editProfile ?? '',
        child: Padding(
          padding: const EdgeInsets.only(top: Consts.globalContentPaddingXL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Consts.radiusRound),
                child: Image.asset(
                  AppImages.defaultProfile,
                  width: iconSize,
                  height: iconSize,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: Consts.globalContentPaddingXL * 2.2),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: detailsBtn.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.all(Consts.globalContentPaddingM),
                      child: Row(
                        children: detailsBtn[index].map((widget) {
                          return Expanded(child: widget);
                        }).toList(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
