import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/consts/names.dart';
import 'core/themes/theme_app.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Names.title,
      theme: ThemeApp.neutral(),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
