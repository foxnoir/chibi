import 'dart:async';
import 'package:chibi/core/di/di.dart';
import 'package:chibi/core/log/logger.dart';
import 'package:chibi/core/router/app_router.dart';
import 'package:chibi/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _loadApp();
  }, (Object error, StackTrace stack) {
    logger.f('zone error $error', error, stack);
  });
}

Future<void> _loadApp() async {
  try {
    await DI.getIt.reset();
    await configureInjection(Environment.dev);

    runApp(Chibi());
  } catch (ex, st) {
    logger.e('startup exception', ex, st);
  }
}

class Chibi extends StatelessWidget with WidgetsBindingObserver {
  // <instance> is the single instance that is being create with the _internal named constructor
  // the factory method returns this single instance
  const Chibi._internal();

  static const Chibi instance = Chibi._internal();

  factory Chibi() => instance;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addObserver(this);

    final appRouter = AppRouter(isTesting: false, context: context).router();

    return MaterialApp.router(
      title: 'Chibi',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
      ],
      routeInformationParser: appRouter.routeInformationParser,
      routeInformationProvider: appRouter.routeInformationProvider,
      routerDelegate: appRouter.routerDelegate,
      theme: getLightTheme(),
    );
  }
}
