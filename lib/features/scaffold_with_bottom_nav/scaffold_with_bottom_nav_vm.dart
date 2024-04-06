import 'package:mobx/mobx.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:injectable/injectable.dart';

part 'scaffold_with_bottom_nav_vm.g.dart';

@injectable
class ScaffoldWithBottomNavVM extends ScaffoldWithBottomNavVMBase
    with _$ScaffoldWithBottomNavVM {
  ScaffoldWithBottomNavVM() : super();
}

abstract class ScaffoldWithBottomNavVMBase extends ViewModel with Store {
  ScaffoldWithBottomNavVMBase();

  @observable
  int index = 0;
}
