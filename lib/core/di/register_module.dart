import 'dart:async';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Module used for register third party dependencies.
// Used to inject [SharedPreferences], [SecureStorage] and [LocalDataBase] into our app.
// preResolve: to pre-await the future and register it's resolved value
@module
abstract class RegisterfModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  // Register flutter_secure_storage with GetIt
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  // // Register the LocalDatabase with GetIt
  // @LazySingleton(dispose: disposeDatabase)
  // LocalDatabase appDb() => Platform.environment.containsKey('FLUTTER_TEST')
  //     ? constructTestDb()
  //     : constructDb();
}

// FutureOr disposeDatabase(LocalDatabase instance) async {
//   await instance.close();
// }
