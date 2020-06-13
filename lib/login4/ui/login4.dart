import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nelson_uis/login2/utils/texts.dart';
import 'package:nelson_uis/login4/colors/colors.dart';
import 'package:nelson_uis/login4/ui/signup4.dart';

class Login4 extends StatefulWidget {
  @override
  _Login4State createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink2,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: <Widget>[
          SizedBox(height: 50),
          _topPart(),
          SizedBox(height: 80.0),
          _buildEmailField(),
          SizedBox(height: 20.0),
          _buildPasswordField(),
          SizedBox(height: 20.0),
          _buildLogInButton(),
          SizedBox(height: 0.0),
          _rememberMe(),
          SizedBox(height: 10.0),
          _dontHaveAccount(),
          SizedBox(height: 30.0),
          _orSignUpWith(),
          _buildFbTwitterGoogleButtons()
        ]),
      ),
    );
  }

  Widget _topPart() {
    return Center(
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
              fontSize: 45,
            ),
          ),
          Text(
            'Welcome Back To Dribbble',
            style: GoogleFonts.averiaLibre(
              color: white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmailField() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email Address',
            style: GoogleFonts.averiaLibre(
              color: white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: '',
              filled: true,
              fillColor: pinkLight,
            ),
          ),
        ]);
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: GoogleFonts.averiaLibre(
            color: white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10.0),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: pinkLight,
            hintText: '',
          ),
        ),
      ],
    );
  }

  Widget _buildLogInButton() {
    return MaterialButton(
      minWidth: double.infinity,
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => SignUp4()));
      },
      height: 45,
      clipBehavior: Clip.hardEdge,
      child: Text('Log In',
          style: GoogleFonts.averiaLibre(
              color: pink2, fontSize: 20, fontWeight: FontWeight.bold)),
      color: white,
      hoverColor: white,
      elevation: 3,
    );
  }

  Widget _rememberMe() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Checkbox(
          value: false,
          onChanged: (value) {},
          checkColor: white,
          activeColor: white,
        ),
        Text(
          'Remember Me',
          style: GoogleFonts.averiaLibre(
            color: white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget _dontHaveAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
              text: "Don't have an account? ",
              style: GoogleFonts.averiaLibre(
                color: white,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'SIGN UP',
                  style: GoogleFonts.averiaLibre(
                    color: white,
                  ),
                ),
              ]),
        ),
      ],
    );
  }

  Widget _orSignUpWith() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Or Sign Up With',
          style: GoogleFonts.averiaLibre(
            color: white,
            fontSize: 17,
          ),
        ),
      ],
    );
  }

  Widget _buildFbTwitterGoogleButtons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _fbButton(),
          _twitterButton(),
          _googleButton(),
        ],
      ),
    );
  }

  Widget _twitterButton() {
    return RaisedButton(
      onPressed: () {},
      child: Row(
        children: <Widget>[
          FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
          ),
          Text(
            '  Twitter',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      color: Color(0xFF48c7f9),
    );
  }

  Widget _fbButton() {
    return RaisedButton(
      onPressed: () {},
      child: Row(
        children: <Widget>[
          FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.white,
          ),
          Text(
            '  Facebook',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      color: Color(0xFF425c98),
    );
  }

  Widget _googleButton() {
    return RaisedButton(
        onPressed: () {},
        child: Row(
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.google,
              color: Colors.blue,
            ),
            Text(
              '  Google',
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        color: Colors.white);
  }
}
