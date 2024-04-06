import 'package:chibi/core/di/stateful_view_with_wm.dart';
import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/features/template/presentation/template_vm.dart';
import 'package:flutter/material.dart';

class Template extends StatefulViewWithVM {
  // final int selectedTab;
  // final dynamic mockViewModel;
  // final bool isTesting;
  // final bool isInternalLinkFromObject;
  const Template({
    // required this.isInternalLinkFromObject,
    // this.selectedTab = 0,
    // this.isTesting = false,
    // this.mockViewModel,flutter gen-l10n
    Key? key,
  }) : super(
          key: key,
        );

  @override
  StatefulViewWithVMState<Template, TemplateVM> createState() =>
      _TemplateState();

  // keys for widget tests
  // static const ValueKey TemplateTabBarKey = ValueKey('TemplateTabBarKey');
}

class _TemplateState extends StatefulViewWithVMState<Template, TemplateVM>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    // final AppLocalizations? appLocalizations = AppLocalizations.of(context);
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colours.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: const SizedBox()),
      ),
    );
  }
}
