// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chibi/core/di/register_module.dart' as _i8;
import 'package:chibi/features/home/presentation/home_vm.dart' as _i4;
import 'package:chibi/features/profile/presentation/profile_vm.dart' as _i5;
import 'package:chibi/features/template/presentation/template_vm.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerfModule = _$RegisterfModule();
    gh.lazySingleton<_i3.FlutterSecureStorage>(
        () => registerfModule.secureStorage);
    gh.factory<_i4.HomeVM>(() => _i4.HomeVM());
    gh.factory<_i5.ProfileVM>(() => _i5.ProfileVM());
    await gh.lazySingletonAsync<_i6.SharedPreferences>(
      () => registerfModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i7.TemplateVM>(() => _i7.TemplateVM());
    return this;
  }
}

class _$RegisterfModule extends _i8.RegisterfModule {}
