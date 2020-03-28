import 'package:mobx/mobx.dart';
import 'package:todolistapp/app/modules/home/models/todo_model.dart';
import 'package:todolistapp/app/modules/home/repositories/todo_repository_interface.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final ITodoRepository repository;

  @observable
  ObservableStream<List<TodoModel>> todoList;

  _HomeBase(this.repository) {
    getList();
  }

  @action
  getList() {
    todoList = repository.getTodos().asObservable();
  }

}
