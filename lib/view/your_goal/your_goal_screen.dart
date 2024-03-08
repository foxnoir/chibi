import 'package:carousel_slider/carousel_slider.dart';
import 'package:chibi/core/theme/colours.dart';
import 'package:flutter/material.dart';

import '../../global_widgets//round_gradient_button.dart';

class YourGoalScreen extends StatefulWidget {
  static String routeName = "/YourGoalScreen";

  const YourGoalScreen({Key? key}) : super(key: key);

  @override
  State<YourGoalScreen> createState() => _YourGoalScreenState();
}

class _YourGoalScreenState extends State<YourGoalScreen> {
  List pageList = [
    {
      "title": "Improve Shape",
      "subtitle":
          "I have a low amount of body fat\nand need / want to build more\nmuscle",
      "image": "assets/images/goal_1.png"
    },
    {
      "title": "Lean & Tone",
      "subtitle":
          "I’m “skinny fat”. look thin but have\nno shape. I want to add learn\nmuscle in the right way",
      "image": "assets/images/goal_2.png"
    },
    {
      "title": "Lose a Fat",
      "subtitle":
          "I have over 20 lbs to lose. I want to\ndrop all this fat and gain muscle\nmass",
      "image": "assets/images/goal_3.png"
    }
  ];
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colours.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: pageList
                    .map((obj) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            gradient: LinearGradient(
                                colors: Colours.primaryG,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              vertical: media.width * 0.01, horizontal: 25),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  obj["image"],
                                  width: media.width * 0.5,
                                  fit: BoxFit.fitWidth,
                                ),
                                SizedBox(height: media.width * 0.02),
                                Text(
                                  obj["title"],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colours.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: media.width * 0.01),
                                Container(
                                  width: 50,
                                  height: 1,
                                  color: Colours.lightgray,
                                ),
                                SizedBox(height: media.width * 0.02),
                                Text(
                                  obj["subtitle"],
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 3,
                                  style: const TextStyle(
                                    color: Colours.white,
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                width: media.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "What is your goal ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colours.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "It will help us to choose a best\nprogram for you",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colours.gray,
                        fontSize: 12,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const Spacer(),
                    SizedBox(height: media.width * 0.05),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
