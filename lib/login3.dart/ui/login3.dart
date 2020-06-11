import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nelson_uis/login2/utils/texts.dart';
import 'package:nelson_uis/login3.dart/colors./colors.dart';

class Login3 extends StatefulWidget {
  @override
  _Login3State createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _back(),
              SizedBox(
                height: 20,
              ),
              _avatar(),
              SizedBox(
                height: 0,
              ),
              _textsWelcome(),
              SizedBox(
                height: 50,
              ),
              _buildUsernameField(),
              SizedBox(
                height: 20,
              ),
              _buildPasswordField(),
              SizedBox(
                height: 40,
              ),
              _buildLogInButton(),
              SizedBox(
                height: 20,
              ),
              _buildForgotPassword(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textsWelcome() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Proceed with your ',
          style: GoogleFonts.laila(
            color: black,
            fontSize: 29,
          ),
        ),
        Text(
          'Login',
          style: GoogleFonts.laila(
            color: black,
            fontWeight: FontWeight.bold,
            fontSize: 29,
          ),
        ),
      ],
    );
  }

  Widget _back() {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.arrow_back_ios),
          Text(
            'Back',
            style: GoogleFonts.laila(
              color: black,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }

  Widget _avatar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          minRadius: 50,
          child: Icon(
            Icons.headset,
            color: Colors.pink,
            size: 90,
          ),
          backgroundColor: white,
        ),
        Spacer(),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: GoogleFonts.laila(color: black),
        ),
        SizedBox(height: 10.0),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: white,
            hintText: '*********',
            hintStyle: GoogleFonts.laila(color: grey),
            suffixIcon: Icon(
              Icons.vpn_key,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUsernameField() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Username',
            style: GoogleFonts.laila(color: black),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'wanjiru@gmail.com',
              hintStyle: GoogleFonts.laila(color: grey),
              filled: true,
              fillColor: white,
              suffixIcon: Icon(Icons.person_outline),
            ),
          ),
        ]);
  }

  Widget _buildLogInButton() {
    return MaterialButton(
      minWidth: double.infinity,
      onPressed: () {},
      height: 45,
      clipBehavior: Clip.hardEdge,
      child: Text('Log In',
          style: GoogleFonts.laila(
              color: white, fontSize: 20, fontWeight: FontWeight.bold)),
      color: red,
      hoverColor: red,
      elevation: 3,
    );
  }

  Widget _buildForgotPassword() {
    return Container(
      child: Center(
        child: InkWell(
          onTap: () {},
          child: Text('Forgot Password? ',
              style: GoogleFonts.laila(color: black, fontSize: 15)),
        ),
      ),
    );
  }
}
