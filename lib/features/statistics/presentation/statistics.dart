import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/features/home/presentation/home_vm.dart';
import 'package:chibi/features/bottom_nav/scaffold_with_nav_bar.dart';
import 'package:chibi/features/statistics/presentation/statistics_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Statistics extends StatelessViewWithVM<StatisticsVM> {
  final dynamic mockViewModel;
  final bool isTesting;
  const Statistics({
    Key? key,
    this.mockViewModel,
    this.isTesting = false,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  @override
  Widget build(BuildContext context, StatisticsVM viewModel) {
    return Observer(builder: (context) {
      return Container(
          color: Colors.pink,
          child: const Center(
            child: Text('Statistics'),
          ));
    });
  }
}
