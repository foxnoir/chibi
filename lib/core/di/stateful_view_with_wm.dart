import 'package:chibi/core/di/di.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:flutter/material.dart';

// File: stateful_view_with_vm.dart

// A StatefulWidget that can provide an instance of a ViewModel.
abstract class StatefulViewWithVM extends StatefulWidget {
  final Object? param1;
  final Object? param2;
  final dynamic mockVM;

  const StatefulViewWithVM({
    Key? key,
    this.param1,
    this.param2,
    this.mockVM,
  }) : super(key: key);

  @override
  StatefulViewWithVMState createState();
}

// A State that has access to a ViewModel through viewModel]
abstract class StatefulViewWithVMState<W extends StatefulViewWithVM,
    T extends ViewModel> extends State<W> {
  late T viewModel;

  @override
  void didUpdateWidget(W oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.param1 != widget.param1 ||
        oldWidget.param2 != widget.param2) {
      viewModel.onDispose();
      viewModel = widget.mockVM != null
          ? widget.mockVM!
          : DI.getIt<T>(
              param1: widget.param1,
              param2: widget.param2,
            );
    }
  }

  @override
  void initState() {
    super.initState();
    viewModel = widget.mockVM != null
        ? widget.mockVM!
        : DI.getIt<T>(
            param1: widget.param1,
            param2: widget.param2,
          );
  }

  @override
  void dispose() {
    viewModel.onDispose();
    super.dispose();
  }
}
