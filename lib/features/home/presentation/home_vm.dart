import 'package:mobx/mobx.dart';
import 'package:injectable/injectable.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';

part 'home_vm.g.dart';

@injectable
class HomeVM extends HomeVMBase with _$HomeVM {
  HomeVM() : super();
}

abstract class HomeVMBase extends ViewModel with Store {}
