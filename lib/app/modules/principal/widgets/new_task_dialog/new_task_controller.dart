import 'package:mobx/mobx.dart';

part 'new_task_controller.g.dart';

class NewTaskController = _PrincipalBase with _$NewTaskController;

abstract class _PrincipalBase with Store {
  @observable
  String title = '';

  @action
  void setTitle(String value) {
    title = value;
  }

  @observable
  String description = '';

  @action
  void setDescription(String value) {
    description = value;
  }

}
