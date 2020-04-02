import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todolistapp/app/modules/menu/menu_controller.dart';
import 'package:todolistapp/app/modules/menu/repository/category_repository.dart';
import 'package:todolistapp/app/modules/menu/repository/category_repository_interface.dart';
import 'package:todolistapp/app/modules/principal/principal_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/principal/principal_page.dart';
import 'package:todolistapp/app/modules/principal/widgets/new_task_dialog/new_task_controller.dart';

class PrincipalModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PrincipalController()),
        Bind((i) => NewTaskController()),
        Bind((i) => MenuController(i.get<CategoryRepository>())),
        Bind<ICategoryRepository>((i) => CategoryRepository(Firestore.instance)),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PrincipalPage()),
      ];

  static Inject get to => Inject<PrincipalModule>.of();
}
