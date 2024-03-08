import 'package:mobx/mobx.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:injectable/injectable.dart';

part 'profile_vm.g.dart';

@injectable
class ProfileVM extends ProfileVMBase with _$ProfileVM {
  ProfileVM() : super();
}

abstract class ProfileVMBase extends ViewModel with Store {
  ProfileVMBase();

  // final WebsocketRepository _websocketRepository =
  //     DI.getIt<WebsocketRepository>();
}
