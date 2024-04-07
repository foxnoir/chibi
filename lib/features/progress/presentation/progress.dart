import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/features/progress/presentation/progress_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Progress extends StatelessViewWithVM<ProgressVM> {
  final dynamic mockViewModel;
  final bool isTesting;
  const Progress({
    Key? key,
    this.mockViewModel,
    this.isTesting = false,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  @override
  Widget build(BuildContext context, ProgressVM viewModel) {
    return Observer(builder: (context) {
      return Container(
          color: Colors.pink,
          child: const Center(
            child: Text('Progress'),
          ));
    });
  }
}
