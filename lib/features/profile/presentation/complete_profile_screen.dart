import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/global_widgets/round_gradient_button.dart';
import 'package:chibi/global_widgets/round_textfield.dart';
import 'package:chibi/view/your_goal/your_goal_screen.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = '/CompleteProfileScreen';
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Column(
              children: [
                Image.asset('assets/image/complete_profile.png',
                    width: media.width),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Let’s complete your profile',
                  style: TextStyle(
                      color: Colours.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 5),
                const Text(
                  'It will help us to know more about you!',
                  style: TextStyle(
                    color: Colours.gray,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                      color: Colours.lightgray,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Image.asset(
                            'assets/icon/gender_icon.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                            color: Colours.gray,
                          )),
                      Expanded(
                          child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          items: ['Male', 'Female']
                              .map((name) => DropdownMenuItem(
                                  value: name,
                                  child: Text(
                                    name,
                                    style: const TextStyle(
                                        color: Colours.gray, fontSize: 14),
                                  )))
                              .toList(),
                          onChanged: (value) {},
                          isExpanded: true,
                          hint: const Text('Choose Gender',
                              style:
                                  TextStyle(color: Colours.gray, fontSize: 12)),
                        ),
                      )),
                      const SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const RoundTextField(
                  hintText: 'Date of Birth',
                  icon: 'assets/icon/calendar_icon.png',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 15),
                const RoundTextField(
                  hintText: 'Your Weight',
                  icon: 'assets/icon/weight_icon.png',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 15),
                const RoundTextField(
                  hintText: 'Your Height',
                  icon: 'assets/icon/swap_icon.png',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 15),
                RoundGradientButton(
                  title: 'Next >',
                  onPressed: () {
                    Navigator.pushNamed(context, YourGoalScreen.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
