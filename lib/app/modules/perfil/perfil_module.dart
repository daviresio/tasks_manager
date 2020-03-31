import 'package:flutter_modular/flutter_modular.dart';

import 'perfil_controller.dart';
import 'perfil_page.dart';

class PerfilModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PerfilPage()),
      ];

  static Inject get to => Inject<PerfilModule>.of();
}
