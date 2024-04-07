import 'package:chibi/core/di/stateful_view_with_wm.dart';
import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/features/profile/presentation/profile_vm.dart';
import 'package:chibi/features/profile/presentation/widgets/setting_row.dart';
import 'package:chibi/features/profile/presentation/widgets/title_subtitle_cell.dart';
import 'package:chibi/global_widgets/round_button.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulViewWithVM {
  // final int selectedTab;
  // final dynamic mockViewModel;
  // final bool isTesting;
  // final bool isInternalLinkFromObject;
  const Profile({
    // required this.isInternalLinkFromObject,
    // this.selectedTab = 0,
    // this.isTesting = false,
    // this.mockViewModel,flutter gen-l10n
    Key? key,
  }) : super(
          key: key,
        );

  @override
  StatefulViewWithVMState<Profile, ProfileVM> createState() => _ProfileState();

  // keys for widget tests
  // static const ValueKey ProfileTabBarKey = ValueKey('ProfileTabBarKey');
}

class _ProfileState extends StatefulViewWithVMState<Profile, ProfileVM>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  bool positive = false;

  List accountArr = [
    {
      'image': 'assets/icon/p_personal.png',
      'name': 'Personal Data',
      'tag': '1'
    },
    {'image': 'assets/icon/p_achi.png', 'name': 'Achievement', 'tag': '2'},
    {
      'image': 'assets/icon/p_activity.png',
      'name': 'Activity History',
      'tag': '3'
    },
    {
      'image': 'assets/icon/p_workout.png',
      'name': 'Workout Progress',
      'tag': '4'
    }
  ];

  List otherArr = [
    {'image': 'assets/icon/p_contact.png', 'name': 'Contact Us', 'tag': '5'},
    {
      'image': 'assets/icon/p_privacy.png',
      'name': 'Privacy Policy',
      'tag': '6'
    },
    {'image': 'assets/icon/p_setting.png', 'name': 'Setting', 'tag': '7'},
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Profile',
          // style: TextStyle(
          //     color: Colours.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/user.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stefani Wong',
                          style: TextStyle(
                            color: Colours.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Lose a Fat Program',
                          style: TextStyle(
                            color: Colours.gray,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    height: 25,
                    child: RoundButton(
                      title: 'Edit',
                      type: RoundButtonType.primaryBG,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
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
              const SizedBox(
                height: 25,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 2)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Account',
                      style: TextStyle(
                        color: Colours.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: accountArr.length,
                      itemBuilder: (context, index) {
                        var iObj = accountArr[index] as Map? ?? {};
                        return SettingRow(
                          icon: iObj['image'].toString(),
                          title: iObj['name'].toString(),
                          onPressed: () {},
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
