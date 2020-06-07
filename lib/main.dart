import 'package:flutter/material.dart';

import 'package:nelson_uis/login1/ui/home.dart';
import 'package:nelson_uis/login1/ui/login.dart';
import 'package:nelson_uis/login1/utils/colors.dart';
import 'package:nelson_uis/login2/ui/splashpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: primary,
          accentColor: accent,
          primaryColorDark: primaryDark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new HomePage(),
          '/login': (BuildContext context) => new LogIn(),
        });
  }
}
