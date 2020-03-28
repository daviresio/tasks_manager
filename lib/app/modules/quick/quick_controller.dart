import 'package:mobx/mobx.dart';

part 'quick_controller.g.dart';

class QuickController = _QuickBase with _$QuickController;

abstract class _QuickBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
