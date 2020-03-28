import 'package:mobx/mobx.dart';

part 'principal_controller.g.dart';

class PrincipalController = _PrincipalBase with _$PrincipalController;

abstract class _PrincipalBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
