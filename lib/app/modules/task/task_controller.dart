import 'package:mobx/mobx.dart';

part 'task_controller.g.dart';

class TaskController = _ListBase with _$ListController;

abstract class _ListBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
