import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:chibi/features/profile_editor/presentation/profile_editor_vm.dart';
import 'package:chibi/global_widgets/scaffolds/scaffold_with_back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ProfileEditor extends StatelessViewWithVM<ProfileEditorVM> {
  final dynamic mockViewModel;
  const ProfileEditor({
    this.mockViewModel,
    Key? key,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  @override
  Widget build(BuildContext context, ProfileEditorVM viewModel) {
    return Observer(builder: (context) {
      return ScaffoldWithBackButton(
        title: 'Edit Profile',
        child: Container(
            color: Colors.green,
            child: const Center(
              child: Text('Edit Profile'),
            )),
      );
    });
  }
}
