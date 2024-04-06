import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/features/home/presentation/home_vm.dart';
import 'package:chibi/features/bottom_nav/scaffold_with_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Home extends StatelessViewWithVM<HomeVM> {
  final dynamic mockViewModel;
  final bool isTesting;
  const Home({
    Key? key,
    this.mockViewModel,
    this.isTesting = false,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  @override
  Widget build(BuildContext context, HomeVM viewModel) {
    return ScaffoldWithNavBar(
        // title: AppLocalizations.of(context)?.home ?? '',

        child: Observer(builder: (context) {
      return Container(
          color: Colors.red,
          child: const Center(
            child: Text('Home'),
          ));
    }));
  }
}
