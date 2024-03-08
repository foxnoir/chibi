import 'package:chibi/core/di/di.dart';
import 'package:flutter/material.dart';

// Class that receives a passed "T" type when extended and maintains its state
abstract class StatelessViewWithVM<T extends ViewModel> extends StatefulWidget {
  final Object? param1;
  final Object? param2;
  final String? logScreen;
  final T? mockVM;

  const StatelessViewWithVM({
    Key? key,
    this.param1,
    this.param2,
    this.logScreen,
    this.mockVM,
  }) : super(key: key);

  Widget build(BuildContext context, final T viewModel);

  @override
  ViewState<T> createState() => ViewState<T>();
}

class ViewState<T extends ViewModel> extends State<StatelessViewWithVM<T>> {
  late T viewModel;

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
  void didUpdateWidget(StatelessViewWithVM<T> oldWidget) {
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
    } else {
      viewModel.onUpdateView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.build(context, viewModel);
  }

  @override
  void dispose() {
    viewModel.onDispose();
    super.dispose();
  }
}

abstract class ViewModel {
  void onDispose() {}
  void onUpdateView() {}
}
