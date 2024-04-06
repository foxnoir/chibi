import 'package:mobx/mobx.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:injectable/injectable.dart';

part 'scaffold_with_nav_bar_vm.g.dart';

@injectable
class ScaffoldWithNavBarVM extends ScaffoldWithNavBarVMBase
    with _$ScaffoldWithNavBarVM {
  ScaffoldWithNavBarVM() : super();
}

abstract class ScaffoldWithNavBarVMBase extends ViewModel with Store {
  ScaffoldWithNavBarVMBase();

  @observable
  int index = 0;
}
