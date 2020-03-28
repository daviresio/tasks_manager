import 'package:todolistapp/app/modules/task/month/month_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/task/month/month_page.dart';

class MonthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MonthController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MonthPage()),
      ];

  static Inject get to => Inject<MonthModule>.of();
}
