import 'package:flutter/material.dart';

import 'package:nelson_uis/login1/ui/home.dart';
import 'package:nelson_uis/login1/ui/login.dart';
import 'package:nelson_uis/login1/utils/colors.dart';
import 'package:nelson_uis/login2/ui/login.dart';
import 'package:nelson_uis/login2/ui/signup.dart';
import 'package:nelson_uis/login2/ui/splashpage.dart';
import 'package:nelson_uis/login2/utils/colors.dart';

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
          primaryColor: orange,
          accentColor: orange,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new HomePage(),
          '/login': (BuildContext context) => new LogIn(),
          '/login2': (BuildContext context) => new Login(),
          '/signup': (BuildContext context) => new Signup(),
        });
  }
}
