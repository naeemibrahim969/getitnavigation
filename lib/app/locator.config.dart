// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i5;

import '../services/api_service.dart' as _i3;
import '../services/auth_service.dart' as _i4;
import '../services/counter_service.dart' as _i6;
import '../services/media_service.dart' as _i8;
import '../services/post_service.dart' as _i9;
import '../services/repository.dart' as _i11;
import '../services/shared_preferences_service.dart' as _i12;
import '../services/third_party_services.dart' as _i14;
import '../ui/views/home/home_view_model.dart' as _i7;
import '../ui/views/posts_example/posts_viewmodel.dart' as _i10;
import '../ui/views/todo/todo_viewmodel.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyServices = _$ThirdPartyServices();
  gh.lazySingleton<_i3.ApiService>(() => _i3.ApiService());
  gh.lazySingleton<_i4.AuthService>(() => _i4.AuthService());
  gh.lazySingleton<_i5.BottomSheetService>(
      () => thirdPartyServices.bottomSheetService);
  gh.lazySingleton<_i6.CounterService>(() => _i6.CounterService());
  gh.lazySingleton<_i5.DialogService>(() => thirdPartyServices.dialogService);
  gh.singleton<_i7.HomeViewModel>(_i7.HomeViewModel());
  gh.lazySingleton<_i8.MediaService>(() => _i8.MediaService());
  gh.lazySingleton<_i5.NavigationService>(
      () => thirdPartyServices.navigationService);
  gh.lazySingleton<_i9.PostService>(() => _i9.PostService());
  gh.singleton<_i10.PostsViewModel>(_i10.PostsViewModel());
  gh.factory<_i11.Repository>(() => _i11.Repository());
  gh.lazySingleton<_i12.SharedPreferencesService>(
      () => _i12.SharedPreferencesService());
  gh.lazySingleton<_i5.SnackbarService>(
      () => thirdPartyServices.snackBarService);
  gh.singleton<_i13.TodoViewModel>(_i13.TodoViewModel());
  return get;
}

class _$ThirdPartyServices extends _i14.ThirdPartyServices {
  @override
  _i5.BottomSheetService get bottomSheetService => _i5.BottomSheetService();
  @override
  _i5.DialogService get dialogService => _i5.DialogService();
  @override
  _i5.NavigationService get navigationService => _i5.NavigationService();
  @override
  _i5.SnackbarService get snackBarService => _i5.SnackbarService();
}
