// import 'dart:async';
// import 'dart:io';
// import 'dart:math';
// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:keep_screen_on/keep_screen_on.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:injectable/injectable.dart';
// import 'package:juwelo/core/di/di.dart';
// import 'package:juwelo/core/network/http_overrides.dart';
// import 'package:juwelo/core/router/app_router.dart';
// import 'package:juwelo/core/theme/theme.dart';
// import 'package:juwelo/core/init_service.dart';
// import 'package:juwelo/features/crashlytics/application/crashlytics_util.dart';
// import 'package:juwelo/core/log/logger.dart';
// import 'package:juwelo/features/api/data/api.dart';
// import 'package:juwelo/features/push_notifications/application/push_notifications_util.dart';
// import 'package:juwelo/features/settings/data/settings_repository.dart';
// import 'package:juwelo/features/websocket/data/websocket_repository.dart';
// import 'package:juwelo/features/wishlist/data/wishlist_repository.dart';
// import 'package:juwelo/features/order_history/data/order_history_repository.dart';
// import 'package:phone_form_field/l10n/generated/phone_field_localization.dart';

// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   await Firebase.initializeApp();
//   final PushNotificationsUtil pushNotificationsUtils =
//       DI.getIt<PushNotificationsUtil>();

//   await pushNotificationsUtils.setUpPushNotificationFunctionality();

//   int msgId = int.tryParse(message.messageId.toString()) ?? 0;
//   const androidPlatformChannelSpecifics = AndroidNotificationDetails(
//       'default', 'default',
//       importance: Importance.max, priority: Priority.high, ticker: null);
//   const iOSPlatformChannelSpecifics = DarwinNotificationDetails();
//   const platformChannelSpecifics = NotificationDetails(
//       android: androidPlatformChannelSpecifics,
//       iOS: iOSPlatformChannelSpecifics);

//   await flutterLocalNotificationsPlugin.show(msgId, message.messageId,
//       message.notification?.body, platformChannelSpecifics,
//       payload: message.data['clickAction']);
// }

// Future<void> setCertificatesBytes() async {
//   if (Platform.isAndroid) {
//     // Set certificate callback to avoid HandshakeException
//     HttpOverrides.global = AndroidHttpOverrides();

//     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
//     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//     String androidVersion =
//         androidInfo.version.release; // Retrieve the Android version

//     // Parse the Android version and compare it
//     int androidVersionNumber =
//         int.tryParse(androidVersion.split('.').first) ?? 0;

//     if (androidVersionNumber <= 7) {
//       //Device is running an Android version older than Android 7 (Nougat)
//       try {
//         ByteData data = await PlatformAssetBundle()
//             .load('assets/certificate/lets-encrypt-r3.pem');
//         SecurityContext.defaultContext
//             .setTrustedCertificatesBytes(data.buffer.asUint8List());
//       } catch (error) {
//         logger.e('setCertificatesBytes failed', error, null);
//       }
//     }
//   }
// }

// Future<void> setKeepScreenOn() async {
//   await KeepScreenOn.turnOn();
// }

// Future<void> main() async {
//   await runZonedGuarded(() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     await Firebase.initializeApp();
//     await setCertificatesBytes();
//     await setKeepScreenOn();
//     await _loadApp();
//   }, (Object error, StackTrace stack) {
//     CrashlyticsUtil().reportException(error, stack: stack);
//     logger.f('zone error $error', error, stack);
//   });
// }

// Future<void> _loadApp() async {
//   try {
//     await DI.getIt.reset();
//     await configureInjection(Environment.dev);

//     final InitService initService = DI.getIt<InitService>();
//     final WishlistRepository wishlistRepository =
//         DI.getIt<WishlistRepository>();
//     final OrderHistoryRepository orderHistoryRepository =
//         DI.getIt<OrderHistoryRepository>();
//     final WebsocketRepository websocketRepository =
//         DI.getIt<WebsocketRepository>();

//     await initService.init();
//     runApp(JuweloApp());
//     await orderHistoryRepository.init();
//     await wishlistRepository.init();
//     await websocketRepository.startSocket();
//   } catch (ex, st) {
//     CrashlyticsUtil().reportException(e, stack: st);
//     logger.e('startup exception', ex, st);
//   }

//   FlutterError.onError = (FlutterErrorDetails details) {
//     CrashlyticsUtil().flutterError(details);
//   };
//   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
// }

// class JuweloApp extends StatelessWidget with WidgetsBindingObserver {
//   // <instance> is the single instance that is being create with the _internal named constructor
//   // the factory method returns this single instance
//   const JuweloApp._internal();

//   static const JuweloApp instance = JuweloApp._internal();

//   factory JuweloApp() => instance;

//   @override
//   Widget build(BuildContext context) {
//     final Api api = DI.getIt<Api>();
//     api.init();
//     WidgetsBinding.instance.addObserver(this);

//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       routeInformationParser: appRouter.routeInformationParser,
//       routeInformationProvider: appRouter.routeInformationProvider,
//       routerDelegate: appRouter.routerDelegate,
//       localizationsDelegates: const [
//         ...AppLocalizations.localizationsDelegates,
//         PhoneFieldLocalization.delegate
//       ],
//       supportedLocales: AppLocalizations.supportedLocales,
//       locale: DI.getIt<SettingsRepository>().locale,
//       theme: getLightTheme(),
//     );
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     super.didChangeAppLifecycleState(state);
//     if (state == AppLifecycleState.resumed) {
//       final PushNotificationsUtil pushNotificationsUtils =
//           DI.getIt<PushNotificationsUtil>();
//       pushNotificationsUtils.subscribeTopics();
//     }
//   }
// }
