import 'package:flutter_modular/flutter_modular.dart';

import 'task_controller.dart';
import 'task_page.dart';

class TaskModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TaskController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => TaskPage()),
      ];

  static Inject get to => Inject<TaskModule>.of();
}
