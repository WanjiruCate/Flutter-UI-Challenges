import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nelson_uis/login3.dart/colors./colors.dart';

class SplashPage3 extends StatefulWidget {
  @override
  _SplashPage3State createState() => _SplashPage3State();
}

class _SplashPage3State extends State<SplashPage3> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    return Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed('/login3');
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: red,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _background(),
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 4,
                child: _avatar(),
              ),
              Expanded(
                flex: 1,
                child: _texts(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          minRadius: 70,
          child: Icon(
            Icons.headset,
            color: Colors.pink,
            size: 70,
          ),
          backgroundColor: white,
        ),
      ],
    );
  }

  Widget _background() {
    return Container(
      color: red,
    );
  }

  Widget _texts() {
    return Column(
      children: <Widget>[
        Text(
          'Music App',
          style: GoogleFonts.laila(
            color: white,
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'All the Music You need in One Place',
          style: GoogleFonts.laila(color: white, fontSize: 18),
        ),
      ],
    );
  }
}

class CenterHorizontal extends StatelessWidget {
  final Widget child;
  CenterHorizontal(this.child);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        child,
      ],
    );
  }
}
