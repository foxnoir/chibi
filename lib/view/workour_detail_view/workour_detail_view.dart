import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/global_widgets/gradient_btn.dart';
import 'package:chibi/view/workour_detail_view/exercises_stpe_details.dart';
import 'package:chibi/view/workour_detail_view/widgets/exercises_set_section.dart';
import 'package:chibi/view/workour_detail_view/widgets/icon_title_next_row.dart';
import 'package:chibi/view/workout_schedule_view/workout_schedule_view.dart';
import 'package:flutter/material.dart';

class WorkoutDetailView extends StatefulWidget {
  final Map dObj;
  const WorkoutDetailView({Key? key, required this.dObj}) : super(key: key);

  @override
  State<WorkoutDetailView> createState() => _WorkoutDetailViewState();
}

class _WorkoutDetailViewState extends State<WorkoutDetailView> {
  List latestArr = [
    {
      'image': 'assets/image/Workout1.png',
      'title': 'Fullbody Workout',
      'time': 'Today, 03:00pm'
    },
    {
      'image': 'assets/image/Workout2.png',
      'title': 'Upperbody Workout',
      'time': 'June 05, 02:00pm'
    },
  ];

  List youArr = [
    {'image': 'assets/icon/barbell.png', 'title': 'Barbell'},
    {'image': 'assets/icon/skipping_rope.png', 'title': 'Skipping Rope'},
    {'image': 'assets/icon/bottle.png', 'title': 'Bottle 1 Liters'},
  ];

  List exercisesArr = [
    {
      'name': 'Set 1',
      'set': [
        {
          'image': 'assets/image/img_1.png',
          'title': 'Warm Up',
          'value': '05:00'
        },
        {
          'image': 'assets/image/img_2.png',
          'title': 'Jumping Jack',
          'value': '12x'
        },
        {
          'image': 'assets/image/img_1.png',
          'title': 'Skipping',
          'value': '15x'
        },
        {'image': 'assets/image/img_2.png', 'title': 'Squats', 'value': '20x'},
        {
          'image': 'assets/image/img_1.png',
          'title': 'Arm Raises',
          'value': '00:53'
        },
        {
          'image': 'assets/image/img_2.png',
          'title': 'Rest and Drink',
          'value': '02:00'
        },
      ],
    },
    {
      'name': 'Set 2',
      'set': [
        {
          'image': 'assets/image/img_1.png',
          'title': 'Warm Up',
          'value': '05:00'
        },
        {
          'image': 'assets/image/img_2.png',
          'title': 'Jumping Jack',
          'value': '12x'
        },
        {
          'image': 'assets/image/img_1.png',
          'title': 'Skipping',
          'value': '15x'
        },
        {'image': 'assets/image/img_2.png', 'title': 'Squats', 'value': '20x'},
        {
          'image': 'assets/image/img_1.png',
          'title': 'Arm Raises',
          'value': '00:53'
        },
        {
          'image': 'assets/image/img_2.png',
          'title': 'Rest and Drink',
          'value': '02:00'
        },
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: Colours.primaryG)),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colours.lightgray,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    'assets/icon/back_icon.png',
                    width: 15,
                    height: 15,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colours.lightgray,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      'assets/icon/more_icon.png',
                      width: 15,
                      height: 15,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leadingWidth: 0,
              leading: Container(),
              expandedHeight: media.width * 0.5,
              flexibleSpace: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/image/detail_top.png',
                  width: media.width * 0.75,
                  height: media.width * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Colours.gray.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.dObj['title'].toString(),
                                  style: const TextStyle(
                                      color: Colours.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "${widget.dObj["exercises"].toString()} | ${widget.dObj["time"].toString()} | 320 Calories Burn",
                                  style: const TextStyle(
                                      color: Colours.gray, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              'assets/icon/fav_icon.png',
                              width: 15,
                              height: 15,
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      IconTitleNextRow(
                          icon: 'assets/icon/time_icon.png',
                          title: 'Schedule Workout',
                          time: '5/27, 09:00 AM',
                          color: Colours.lightBlue.withOpacity(0.3),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, WorkoutScheduleView.routeName);
                          }),
                      SizedBox(
                        height: media.width * 0.02,
                      ),
                      IconTitleNextRow(
                          icon: 'assets/icon/difficulity_icon.png',
                          title: 'Difficulity',
                          time: 'Beginner',
                          color: theme.colorScheme.secondary.withOpacity(0.3),
                          onPressed: () {}),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "You'll Need",
                            style: TextStyle(
                                color: Colours.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '${youArr.length} Items',
                              style: const TextStyle(
                                  color: Colours.gray, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.5,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: youArr.length,
                            itemBuilder: (context, index) {
                              var yObj = youArr[index] as Map? ?? {};
                              return Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: media.width * 0.35,
                                        width: media.width * 0.35,
                                        decoration: BoxDecoration(
                                            color: Colours.lightgray,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          yObj['image'].toString(),
                                          width: media.width * 0.2,
                                          height: media.width * 0.2,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          yObj['title'].toString(),
                                          style: const TextStyle(
                                              color: Colours.black,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ));
                            }),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Exercises',
                            style: TextStyle(
                                color: Colours.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '${youArr.length} Sets',
                              style: const TextStyle(
                                  color: Colours.gray, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: exercisesArr.length,
                          itemBuilder: (context, index) {
                            var sObj = exercisesArr[index] as Map? ?? {};
                            return ExercisesSetSection(
                              sObj: sObj,
                              onPressed: (obj) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ExercisesStepDetails(
                                      eObj: obj,
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GradientBtn(title: 'Start Workout', onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
