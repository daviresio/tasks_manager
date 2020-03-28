import 'package:mobx/mobx.dart';

part 'month_controller.g.dart';

class MonthController = _MonthBase with _$MonthController;

abstract class _MonthBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
