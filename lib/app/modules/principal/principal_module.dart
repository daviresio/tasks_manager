import 'package:todolistapp/app/modules/principal/principal_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/principal/principal_page.dart';
import 'package:todolistapp/app/modules/principal/widgets/new_task_dialog/new_task_controller.dart';

class PrincipalModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PrincipalController()),
        Bind((i) => NewTaskController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PrincipalPage()),
      ];

  static Inject get to => Inject<PrincipalModule>.of();
}
