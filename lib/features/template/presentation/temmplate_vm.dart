import 'package:mobx/mobx.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:injectable/injectable.dart';

part 'temmplate_vm.g.dart';

@injectable
class TemplateVM extends TemplateVMBase with _$TemplateVM {
  TemplateVM() : super();
}

abstract class TemplateVMBase extends ViewModel with Store {
  TemplateVMBase();

  // final WebsocketRepository _websocketRepository =
  //     DI.getIt<WebsocketRepository>();
}
