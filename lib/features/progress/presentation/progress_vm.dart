import 'package:mobx/mobx.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:injectable/injectable.dart';

part 'progress_vm.g.dart';

@injectable
class ProgressVM extends ProgressVMBase with _$ProgressVM {
  ProgressVM() : super();
}

abstract class ProgressVMBase extends ViewModel with Store {
  ProgressVMBase();

  // final WebsocketRepository _websocketRepository =
  //     DI.getIt<WebsocketRepository>();
}
