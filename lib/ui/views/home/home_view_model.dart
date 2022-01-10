import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';

@singleton
class HomeViewModel extends BaseViewModel{

  String _title = "Home View";
  String get title => '$_title $_counter';

  int _counter = 0;
  int get counter => _counter;

  void updateCounter(){
    _counter++;
    notifyListeners();
  }

}