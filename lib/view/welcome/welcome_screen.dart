import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/view/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

import '../../global_widgets//round_gradient_button.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/WelcomeScreen";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colours.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset("assets/images/welcome_promo.png",
                  width: media.width * 0.75, fit: BoxFit.fitWidth),
              SizedBox(height: media.width * 0.05),
              const Text(
                "Welcome, Stefani",
                style: TextStyle(
                    color: Colours.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: media.width * 0.01),
              const Text(
                "You are all set now, let’s reach your\ngoals together with us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colours.grayColor,
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              RoundGradientButton(
                title: "Go To Home",
                onPressed: () {
                  Navigator.pushNamed(context, DashboardScreen.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
