import 'package:flutter/material.dart';
import 'package:nelson_uis/ui/home.dart';
import 'package:nelson_uis/ui/login.dart';
import 'package:nelson_uis/utils/colors.dart';

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
        home: LogIn(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new HomePage(),
          '/login': (BuildContext context) => new LogIn(),
        });
  }
}
