import 'package:chibi/core/di/stateful_view_with_wm.dart';
import 'package:chibi/features/home/presentation/home_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Home extends StatefulViewWithVM {
  final dynamic mockViewModel;
  const Home({
    this.mockViewModel,
    Key? key,
  }) : super(
          key: key,
          mockVM: mockViewModel,
        );

  @override
  StatefulViewWithVMState<Home, HomeVM> createState() => _HomeState();
}

class _HomeState extends StatefulViewWithVMState<Home, HomeVM> {
  @override
  void initState() {
    print('initState');
    super.initState();

    // }

    // @override
    // void didChangeDependencies() {
    //   super.didChangeDependencies();

    // }

    // @override
    // void dispose() {
    //   super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Container(
          color: Colors.red,
          child: const Center(
            child: Text('Home'),
          ));
    });
  }
}
