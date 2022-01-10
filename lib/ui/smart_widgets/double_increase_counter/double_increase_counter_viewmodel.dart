import 'package:stacked/stacked.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/services/counter_service.dart';

class DoubleIncreaseCounterViewModel extends ReactiveViewModel{
  final _counterService = getIt<CounterService>();
  int get counter => _counterService.counter;


  void updateCounter() {
    _counterService.doubleCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}
