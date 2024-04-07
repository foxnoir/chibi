import 'package:chibi/core/common.dart';
import 'package:chibi/global_widgets//round_gradient_button.dart';
import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/view/workour_detail_view/widgets/icon_title_next_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddScheduleView extends StatefulWidget {
  final DateTime date;
  const AddScheduleView({super.key, required this.date});

  @override
  State<AddScheduleView> createState() => _AddScheduleViewState();
}

class _AddScheduleViewState extends State<AddScheduleView> {
  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
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
              'assets/icon/closed_btn.png',
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: const Text(
          'Add Schedule',
          style: TextStyle(
              color: Colours.black, fontSize: 16, fontWeight: FontWeight.w700),
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
      backgroundColor: theme.colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Image.asset(
                'assets/icon/date.png',
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                dateToString(widget.date, formatStr: 'E, dd MMMM yyyy'),
                style: const TextStyle(color: Colours.gray, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Time',
            style: TextStyle(
                color: Colours.black,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: media.width * 0.35,
            child: CupertinoDatePicker(
              onDateTimeChanged: (newDate) {},
              initialDateTime: DateTime.now(),
              use24hFormat: false,
              minuteInterval: 1,
              mode: CupertinoDatePickerMode.time,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Details Workout',
            style: TextStyle(
                color: Colours.black,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          IconTitleNextRow(
              icon: 'assets/icon/choose_workout.png',
              title: 'Choose Workout',
              time: 'Upperbody',
              color: Colours.lightgray,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: 'assets/icon/difficulity_icon.png',
              title: 'Difficulity',
              time: 'Beginner',
              color: Colours.lightgray,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: 'assets/icon/repetitions.png',
              title: 'Custom Repetitions',
              time: '',
              color: Colours.lightgray,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: 'assets/icon/repetitions.png',
              title: 'Custom Weights',
              time: '',
              color: Colours.lightgray,
              onPressed: () {}),
          const Spacer(),
          RoundGradientButton(title: 'Save', onPressed: () {}),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
