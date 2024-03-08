import 'package:chibi/global_widgets//round_gradient_button.dart';
import 'package:chibi/core/theme/colours.dart';
import 'package:flutter/material.dart';

import '../../global_widgets//round_button.dart';

class FinishWorkoutScreen extends StatelessWidget {
  static String routeName = "/FinishWorkoutScreen";
  const FinishWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colours.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/complete_workout.png",
                height: media.width * 0.8,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Congratulations, You Have Finished Your Workout",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colours.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Exercises is king and nutrition is queen. Combine the two and you will have a kingdom",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colours.grayColor,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "-Jack Lalanne",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colours.grayColor,
                  fontSize: 12,
                ),
              ),
              const Spacer(),
              RoundGradientButton(
                  title: "Back To Home",
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
