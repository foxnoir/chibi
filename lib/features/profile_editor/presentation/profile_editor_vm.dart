import 'package:mobx/mobx.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:injectable/injectable.dart';

part 'profile_editor_vm.g.dart';

@injectable
class ProfileEditorVM extends ProfileEditorVMBase with _$ProfileEditorVM {
  ProfileEditorVM() : super();
}

abstract class ProfileEditorVMBase extends ViewModel with Store {
  ProfileEditorVMBase();

  @observable
  bool isEditingMode = false;
}
