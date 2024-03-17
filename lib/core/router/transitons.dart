import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Class to make more beautiful and targeted transitions when routing.

class SlideTransitionPage extends CustomTransitionPage {
  SlideTransitionPage({required LocalKey key, required Widget child})
      : super(
            key: key,
            child: child,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              return SlideTransition(
                  position: animation.drive(tween), child: child);
            });
}

class ReverseSlideTransitionPage extends CustomTransitionPage {
  ReverseSlideTransitionPage({required LocalKey key, required Widget child})
      : super(
            key: key,
            child: child,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin =
                  Offset(-1.0, 0.0); // Opposite of SlideTransitionPage
              const end = Offset.zero; // Opposite of SlideTransitionPage
              const curve = Curves.ease;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

              return SlideTransition(
                  position: animation.drive(tween), child: child);
            });
}

class TransitionPage extends CustomTransitionPage {
  TransitionPage({required LocalKey key, required Widget child})
      : super(
            key: key,
            child: child,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            });
}
