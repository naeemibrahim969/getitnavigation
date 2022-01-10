import 'package:stacked/stacked.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/services/shared_preferences_service.dart';

class StartupViewModel extends BaseViewModel {

  final _sharedPreferences = getIt<SharedPreferencesService>();

  Future initialise() async {
    var hasUser = _sharedPreferences.hasUser;
  }

}
