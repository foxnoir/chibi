import 'package:chibi/core/di/stateful_view_with_wm.dart';
import 'package:chibi/global_widgets/template_statefull/presentation/template_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Template extends StatefulViewWithVM {
  final dynamic mockViewModel;
  const Template({
    this.mockViewModel,
    Key? key,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  @override
  StatefulViewWithVMState<Template, TemplateVM> createState() =>
      _TemplateState();
}

class _TemplateState extends StatefulViewWithVMState<Template, TemplateVM> {
  // @override
  // void initState() {
  //   super.initState();

  // }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();

  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Container();
    });
  }
}
