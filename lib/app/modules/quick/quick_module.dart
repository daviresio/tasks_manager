import 'package:todolistapp/app/quick/quick_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/quick/quick_page.dart';

class QuickModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => QuickController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => QuickPage()),
      ];

  static Inject get to => Inject<QuickModule>.of();
}
