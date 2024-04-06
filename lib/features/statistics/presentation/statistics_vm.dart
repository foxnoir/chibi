import 'package:mobx/mobx.dart';
import 'package:chibi/core/di/stateless_view_with_vm.dart';
import 'package:injectable/injectable.dart';

part 'statistics_vm.g.dart';

@injectable
class StatisticsVM extends StatisticsVMBase with _$StatisticsVM {
  StatisticsVM() : super();
}

abstract class StatisticsVMBase extends ViewModel with Store {
  StatisticsVMBase();

  // final WebsocketRepository _websocketRepository =
  //     DI.getIt<WebsocketRepository>();
}
