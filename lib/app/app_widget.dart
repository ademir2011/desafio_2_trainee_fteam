import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Autenticação',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        colorScheme: const ColorScheme.light(
          primary: Color(0xff0F1B8A),
          inversePrimary: Color(0xffE0E5F8),
          secondary: Color(0xff5E79D1),
          onSecondary: Color(0xffE0E5F8),
          tertiary: Color(0xff3F52B3),
          onTertiary: Color(0xffA5B0D8),
        ),
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            color: Color(0xff3F52B3),
            fontWeight: FontWeight.w900,
            fontSize: 22,
            letterSpacing: 1,
          ),
          bodyMedium: TextStyle(
            fontSize: 13,
          ),
          bodySmall: TextStyle(
            fontSize: 8.5,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xffffffff),
        ),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
