import 'package:stacked/stacked.dart';

class StreamExViewModel extends StreamViewModel<int>{

  String get title => "this is time to practise flutter \n $data";


  @override
  Stream<int> get stream => _otherSource ? epochUpdates():epochUpdatesFast();

  bool _otherSource = false;

  void swapSources(){
    _otherSource =!_otherSource;
    notifySourceChanged();
  }

  Stream<int> epochUpdates() async* {
    while(true){
      await Future.delayed(Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdatesFast() async* {
    while(true){
      await Future.delayed(Duration(microseconds: 300));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  @override
  void onData(int? data) {
    super.onData(data);

  }

}