import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/ui/views/home/home_view.dart';
import 'package:stackedproj/utils/paths.dart';

class StartupViewModel extends BaseViewModel{

  final NavigationService _navigationService = getIt<NavigationService>();


  Future navigateToHome() async{
    await _navigationService.navigateTo(Paths.homeView);
    // await Get.to(HomeView());
  }

}