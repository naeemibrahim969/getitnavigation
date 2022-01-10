import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stackedproj/ui/views/mockstartup/startup_viewmodel.dart';
import 'package:stackedproj/utils/paths.dart';

import '../setup/test_helpers.dart';

void main() {
  group('Mock StartUp ViewModel Tests -', () {

    setUp(() => registerServices());

    tearDown(() => unregisterServices());

    group('initialize',(){
      test('When called should check hasUser on sharedPreferences',() async {
        // var sharedPreferences = SharedPreferencesServiceMock();
        // getIt.registerSingleton<SharedPreferencesService>(sharedPreferences);
        //Above 2 lines written in test_helpers to clean code
        var sharedPreferences = getAndRegMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(sharedPreferences.hasUser);
      });

      test('When called and hasUser return true, should call replace with HomeView',() async {
        var navigationService = getAndRegNavigationServiceMock();
        var model = StartupViewModel();
        await model.initialise();
        verify(navigationService.navigateTo(Paths.homeView));
      });
    });

  });
}