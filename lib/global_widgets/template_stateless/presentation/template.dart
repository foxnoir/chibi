import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/global_widgets/template_stateless/presentation/template_vm.dart';
import 'package:flutter/material.dart';

class Template extends StatelessViewWithVM<TemplateVM> {
  final dynamic mockViewModel;
  const Template({
    this.mockViewModel,
    Key? key,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  @override
  Widget build(BuildContext context, TemplateVM viewModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(),
    );
  }
}
