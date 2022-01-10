import 'package:stacked/stacked.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/datamodels/user.dart';
import 'package:stackedproj/services/api_service.dart';

class UserViewModel extends FutureViewModel<User> {
  final int userId;
  UserViewModel(this.userId);

  @override
  Future<User> futureToRun() => getIt<ApiService>().getUserProfile(userId);
}
