// This file contains setup functions that are created to remove duplicate
// Code from tests and make them  more readable

import 'package:mockito/mockito.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/services/shared_preferences_service.dart';

class SharedPreferencesServiceMock extends Mock implements SharedPreferencesService{}
class NavigationServiceMock extends Mock implements NavigationService{}

SharedPreferencesService getAndRegMock(){
  var service = SharedPreferencesServiceMock();
  getIt.registerSingleton<SharedPreferencesService>(service);
  return service;
}

NavigationService getAndRegNavigationServiceMock(){
  var service = NavigationServiceMock();
  getIt.registerSingleton<NavigationService>(service);
  return service;
}

void registerServices() {
  getAndRegMock();
  getAndRegNavigationServiceMock();
}

void unregisterServices() {
  getIt.unregister<SharedPreferencesService>();
  getIt.unregister<NavigationService>();
}

// void _removeRegistrationIfExists<T>() {
//   if (getIt.isRegistered<T>()) {
//     getIt.unregister<T>();
//   }
// }