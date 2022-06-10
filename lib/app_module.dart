import 'package:flutter_modular/flutter_modular.dart';

import 'src/modules/auth/presenter/pages/signin_page.dart';
import 'src/modules/auth_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: AuthModule()),
      ];
}
