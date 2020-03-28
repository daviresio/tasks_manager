import 'package:todolistapp/app/modules/task/day/day_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/task/day/day_page.dart';

class DayModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DayController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => DayPage()),
      ];

  static Inject get to => Inject<DayModule>.of();
}
