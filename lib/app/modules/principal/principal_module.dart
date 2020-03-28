import 'package:todolistapp/app/modules/principal/principal_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolistapp/app/modules/principal/principal_page.dart';

class PrincipalModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PrincipalController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PrincipalPage()),
      ];

  static Inject get to => Inject<PrincipalModule>.of();
}
