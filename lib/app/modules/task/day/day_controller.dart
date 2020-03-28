import 'package:mobx/mobx.dart';

part 'day_controller.g.dart';

class DayController = _DayBase with _$DayController;

abstract class _DayBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
