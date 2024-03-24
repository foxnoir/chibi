import 'dart:io';

import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/features/profile/presentation/profile.dart';
import 'package:chibi/view/activity/activity_screen.dart';
import 'package:chibi/view/camera/camera_screen.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/home.dart';

class DashboardScreen extends StatefulWidget {
  static String routeName = "/DashboardScreen";

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectTab = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const ActivityScreen(),
    const CameraScreen(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.pink,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {},
        child: SizedBox(
          width: 70,
          height: 70,
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: Colours.primaryG),
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 2)
                ]),
            child: Icon(Icons.search_sharp,
                color: theme.colorScheme.surface, size: 32),
          ),
        ),
      ),
      body: IndexedStack(
        index: selectTab,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomAppBar(
        height: Platform.isIOS ? 70 : 65,
        color: Colors.transparent,
        padding: const EdgeInsets.all(0),
        child: Container(
          height: Platform.isIOS ? 70 : 65,
          decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 2, offset: Offset(0, -2))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  icon: "assets/icons/home_icon.png",
                  selectIcon: "assets/icons/home_select_icon.png",
                  isActive: selectTab == 0,
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        selectTab = 0;
                      });
                    }
                  }),
              TabButton(
                  icon: "assets/icons/activity_icon.png",
                  selectIcon: "assets/icons/activity_select_icon.png",
                  isActive: selectTab == 1,
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        selectTab = 1;
                      });
                    }
                  }),
              const SizedBox(width: 30),
              TabButton(
                  icon: "assets/icons/camera_icon.png",
                  selectIcon: "assets/icons/camera_select_icon.png",
                  isActive: selectTab == 2,
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        selectTab = 2;
                      });
                    }
                  }),
              TabButton(
                  icon: "assets/icons/user_icon.png",
                  selectIcon: "assets/icons/user_select_icon.png",
                  isActive: selectTab == 3,
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        selectTab = 3;
                      });
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String icon;
  final String selectIcon;
  final bool isActive;
  final VoidCallback onTap;

  const TabButton(
      {Key? key,
      required this.icon,
      required this.selectIcon,
      required this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            isActive ? selectIcon : icon,
            width: 25,
            height: 25,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: isActive ? 8 : 12),
          Visibility(
            visible: isActive,
            child: Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: Colours.secondaryG),
                  borderRadius: BorderRadius.circular(2)),
            ),
          )
        ],
      ),
    );
  }
}
