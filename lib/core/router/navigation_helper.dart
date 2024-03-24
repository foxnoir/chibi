import 'package:chibi/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// A class that contains the routing logic for navigating to specific screens.

class NavigationHelper {
  // Navigates to the root Home, discarding all screens pushed on top.
  static void goToHome(BuildContext context) {
    context.go(AppRouterPaths.home);
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
