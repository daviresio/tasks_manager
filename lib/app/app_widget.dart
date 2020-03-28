import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Nunito',
          primaryColor: Color.fromRGBO(249, 96, 96, 1),
        scaffoldBackgroundColor: Colors.grey[100],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
