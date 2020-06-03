import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nelson_uis/utils/colors.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController usernameController;
  TextEditingController passwordController;

  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/book.jpg'),
              ),
            ),
            child: new BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Positioned(
            child: formData(),
          ),
        ],
      ),
    );
  }

  Widget formData() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * .18),
              titleApp(),
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              usernameContainer(),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              passwordContainer(),
              SizedBox(height: MediaQuery.of(context).size.height * .2),
              loginContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget usernameContainer() {
    return Container(
      child: TextFormField(
          validator: (input) {
            if (input.isEmpty || input != null) {
              return ' Username Needed';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: 'shiru',
            hintStyle: GoogleFonts.mcLaren(fontSize: 16),
            labelText: 'Username',
            labelStyle: GoogleFonts.mcLaren(fontSize: 16),
            prefixIcon: Icon(
              Icons.person,
              color: accent,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
          )),
    );
  }

  Widget passwordContainer() {
    return Container(
      child: TextFormField(
          controller: passwordController,
          validator: (input) {
            if ((input.isEmpty || input != null) && input.length < 6) {
              return 'Password must be at least 6 characters long';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: '"********",',
            hintStyle: GoogleFonts.mcLaren(fontSize: 16),
            labelText: 'Password',
            labelStyle: GoogleFonts.mcLaren(fontSize: 16),
            prefixIcon: Icon(
              Icons.lock,
              color: accent,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
          )),
    );
  }

  Widget loginContainer() {
    return MaterialButton(
      shape: StadiumBorder(),
      minWidth: double.infinity,
      height: 60,
      child: Text(
        'Login',
        style: GoogleFonts.mcLaren(fontSize: 30),
      ),
      color: primary,
      onPressed: () {
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();
          {
            Navigator.of(context).pushReplacementNamed('/home');
          }
        }
      },
    );
  }

  Widget titleApp() {
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(Icons.book),
        ),
        Text(
          'E-Learning',
          style: GoogleFonts.lato(fontSize: 24),
        ),
      ],
    );
  }
}
