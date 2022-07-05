import 'package:flutter_modular/flutter_modular.dart';

import '../../core/routes/app_routes.dart';
import 'presenter/signin/pages/signin_page.dart';
import 'presenter/signup/pages/signup_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoute.signin, child: (context, args) => const SignInPage()),
        ChildRoute(AppRoute.signup, child: (context, args) => const SignUpPage()),
      ];
}
