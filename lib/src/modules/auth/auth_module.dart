import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/pages/signin_page.dart';
import 'presenter/pages/signup_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SignInPage()),
        ChildRoute('/signup', child: (context, args) => const SignUpPage()),
      ];
}
