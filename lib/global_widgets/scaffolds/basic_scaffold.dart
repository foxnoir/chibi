import 'package:flutter/material.dart';

class BasicScaffold extends StatelessWidget {
  final Widget child;
  final Widget? bottomButton;
  final Widget? bottomSheet;

  const BasicScaffold({
    required this.child,
    this.bottomButton,
    this.bottomSheet,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: bottomButton,
      bottomSheet: bottomSheet,
    );
  }
}
