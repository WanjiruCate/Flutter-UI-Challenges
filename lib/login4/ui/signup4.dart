import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nelson_uis/login4/colors/colors.dart';
import 'package:nelson_uis/login4/ui/login4.dart';

class SignUp4 extends StatefulWidget {
  @override
  _SignUp4State createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink2,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height: 50),
            _topPart(),
            SizedBox(height: 50.0),
            _buildNameField(),
            SizedBox(height: 20.0),
            _buildUserNameField(),
            SizedBox(height: 20.0),
            _buildEmailField(),
            SizedBox(height: 20.0),
            _buildPasswordField(),
            SizedBox(height: 10.0),
            _acceptTermsAndConditions(),
            SizedBox(height: 10.0),
            _buildSignUpButton(),
            SizedBox(height: 10.0),
            _orSignUpWith(),
            SizedBox(height: 10.0),
            _buildFbTwitterGoogleButtons()
          ]),
        ),
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
            'Join the Dribble Community',
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

  Widget _buildNameField() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Name',
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

  Widget _buildUserNameField() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Username',
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

  Widget _buildSignUpButton() {
    return MaterialButton(
      minWidth: double.infinity,
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => Login4()));
      },
      height: 45,
      clipBehavior: Clip.hardEdge,
      child: Text('Sign Up',
          style: GoogleFonts.averiaLibre(
              color: pink2, fontSize: 20, fontWeight: FontWeight.bold)),
      color: white,
      hoverColor: white,
      elevation: 3,
    );
  }

  Widget _acceptTermsAndConditions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Checkbox(
          value: false,
          onChanged: (value) {},
          checkColor: white,
          activeColor: white,
        ),
        Expanded(
          child: Text(
            ' It ris simply he printing  lorem ipsum more Ipsum has been the industry',
            style: GoogleFonts.averiaLibre(
              color: white,
              fontSize: 16,
            ),
          ),
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
