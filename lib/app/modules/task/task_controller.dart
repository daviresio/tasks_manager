import 'package:mobx/mobx.dart';

part 'task_controller.g.dart';

class TaskController = _TaskBase with _$TaskController;

abstract class _TaskBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
