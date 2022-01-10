import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';


@singleton
class TodoViewModel extends BaseViewModel {
  List<String> _todos = [];
  List<String> get todos => _todos;

  void startupLogic() {
    print('startup Logic called');
  }

  void addTodo(String text) {
    _todos.add(text);
    notifyListeners();
  }
}
