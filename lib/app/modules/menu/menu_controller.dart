import 'package:mobx/mobx.dart';
import 'package:todolistapp/app/modules/menu/models/category_model.dart';
import 'package:todolistapp/app/modules/menu/repository/category_repository_interface.dart';

part 'menu_controller.g.dart';

class MenuController = _MenuBase with _$MenuController;

abstract class _MenuBase with Store {
  final ICategoryRepository categoryRepository;

  _MenuBase(this.categoryRepository) {
    listAll();
  }

  @observable
  ObservableStream<List<CategoryModel>> categoryList;

  @action
  void listAll() {
    categoryList = categoryRepository.listAll().asObservable();
  }
}
