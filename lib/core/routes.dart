import 'package:chibi/view/activity_tracker/activity_tracker_screen.dart';
import 'package:chibi/view/dashboard/dashboard_screen.dart';
import 'package:chibi/view/finish_workout/finish_workout_screen.dart';
import 'package:chibi/features/profile/presentation/complete_profile_screen.dart';
import 'package:chibi/view/workout_schedule_view/workout_schedule_view.dart';
import 'package:chibi/view/your_goal/your_goal_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  YourGoalScreen.routeName: (context) => const YourGoalScreen(),
  DashboardScreen.routeName: (context) => const DashboardScreen(),
  FinishWorkoutScreen.routeName: (context) => const FinishWorkoutScreen(),
  ActivityTrackerScreen.routeName: (context) => const ActivityTrackerScreen(),
  WorkoutScheduleView.routeName: (context) => const WorkoutScheduleView(),
};
