import 'package:stacked/stacked.dart';

class FutureExViewModel extends FutureViewModel<String>{

  Future<String> getDataFromServer() async{
    await Future.delayed(const Duration(seconds: 5));
    // return 'Fetched From Server';
    throw Exception("Error");
  }

  @override
  Future<String> futureToRun() => getDataFromServer();


  @override
  void onError(error) {
    //Change UI or show error dialog
  }

}