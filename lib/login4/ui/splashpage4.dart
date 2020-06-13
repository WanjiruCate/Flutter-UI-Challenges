import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nelson_uis/login4/colors/colors.dart';

class SplashPage4 extends StatefulWidget {
  @override
  _SplashPage4State createState() => _SplashPage4State();
}

class _SplashPage4State extends State<SplashPage4> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    return Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed('/login4');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.radio_button_checked,
                  size: 50,
                  color: white,
                ),
                Text(
                  'dribbble',
                  style: GoogleFonts.pacifico(
                    color: white,
                    fontSize: 70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
