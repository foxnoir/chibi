import 'package:chibi/core/routes.dart';
import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/view/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness',
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: ThemeData(
          primaryColor: Colours.primaryColor1,
          useMaterial3: true,
          fontFamily: "Poppins"),
      home: const DashboardScreen(),
    );
  }
}
