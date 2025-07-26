// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:api_client/src/api/marvel_api_auth_interceptor.dart' as _i433;
import 'package:api_client/src/di/di_module.dart' as _i1047;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.factory<String>(
      () => dioModule.publicApiKey,
      instanceName: 'a99bc1afb1041323b0b08e8e9ae533dd',
    );
    gh.factory<String>(
      () => dioModule.privateApiKey,
      instanceName: '752148edac519801f8841f1e9d4c7d4dc852f82f',
    );
    gh.lazySingleton<_i433.MarvelApiAuthInterceptor>(() =>
        _i433.MarvelApiAuthInterceptor(
          gh<String>(instanceName: '752148edac519801f8841f1e9d4c7d4dc852f82f'),
          gh<String>(instanceName: 'a99bc1afb1041323b0b08e8e9ae533dd'),
        ));
    gh.lazySingleton<_i361.Dio>(
        () => dioModule.dio(gh<_i433.MarvelApiAuthInterceptor>()));
    return this;
  }
}

class _$DioModule extends _i1047.DioModule {}
