import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/view/your_goal/your_goal_screen.dart';
import 'package:flutter/material.dart';

import '../../../global_widgets/round_gradient_button.dart';
import '../../../global_widgets/round_textfield.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/CompleteProfileScreen";
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
                Image.asset("assets/images/complete_profile.png",
                    width: media.width),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Let’s complete your profile",
                  style: TextStyle(
                      color: Colours.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 5),
                Text(
                  "It will help us to know more about you!",
                  style: TextStyle(
                    color: Colours.gray,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 25),
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
                            "assets/icons/gender_icon.png",
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                            color: Colours.gray,
                          )),
                      Expanded(
                          child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          items: ["Male", "Female"]
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
                          hint: Text("Choose Gender",
                              style: const TextStyle(
                                  color: Colours.gray, fontSize: 12)),
                        ),
                      )),
                      SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                RoundTextField(
                  hintText: "Date of Birth",
                  icon: "assets/icons/calendar_icon.png",
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 15),
                RoundTextField(
                  hintText: "Your Weight",
                  icon: "assets/icons/weight_icon.png",
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 15),
                RoundTextField(
                  hintText: "Your Height",
                  icon: "assets/icons/swap_icon.png",
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 15),
                RoundGradientButton(
                  title: "Next >",
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
