import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/menu/repository/category_repository.dart';
import 'package:todolistapp/app/modules/menu/repository/category_repository_interface.dart';

import 'menu_controller.dart';
import 'menu_page.dart';

class MenuModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MenuController(i.get<CategoryRepository>())),
        Bind<ICategoryRepository>((i) => CategoryRepository(Firestore.instance)),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MenuPage()),
      ];

  static Inject get to => Inject<MenuModule>.of();
}
