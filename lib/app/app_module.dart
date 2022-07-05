import 'package:flutter_modular/flutter_modular.dart';

import 'core/routes/app_routes.dart';
import 'modules/auth/auth_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(AppRoute.signin, module: AuthModule()),
      ];
}
