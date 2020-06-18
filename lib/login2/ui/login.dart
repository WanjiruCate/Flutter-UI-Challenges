import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nelson_uis/login2/ui/signup.dart';
import 'package:nelson_uis/login2/utils/colors.dart';
import 'package:nelson_uis/login2/utils/texts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            buildImageAsset(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: buildBackIcon(),
            ),
            buildLogInForm(),
          ],
        ),
      ),
    );
  }

  Widget buildImageAsset() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),

          //  fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildBackIcon() {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  Widget buildLogInForm() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 300),
        //   height: MediaQuery.of(context).size.height * .6,
        color: grey[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 25.0),
              buildEmailField(),
              SizedBox(height: 20.0),
              buildPasswordField(),
              SizedBox(height: 20.0),
              buildForgotPassword(),
              SizedBox(height: 20.0),
              buildLogInButton(),
              SizedBox(height: 20.0),
              buildAlternativeLogin(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmailField() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email Address',
            style: labelStyle,
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'wanjiru@gmail.com',
              filled: true,
              fillColor: grey[300],
            ),
          ),
        ]);
  }

  Widget buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: labelStyle,
        ),
        SizedBox(height: 10.0),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: grey[300],
            hintText: '*********',
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: orange,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPassword() {
    return Container(
      child: Row(
        children: <Widget>[
          Spacer(),
          InkWell(
            onTap: () {},
            child: Text('Forgot Password? '),
          ),
        ],
      ),
    );
  }

  Widget buildLogInButton() {
    return MaterialButton(
      minWidth: double.infinity,
      onPressed: () {},
      height: 45,
      clipBehavior: Clip.hardEdge,
      child: Text('Log In', style: textLogin),
      color: orange,
      hoverColor: orange,
      elevation: 3,
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
          side: BorderSide(color: orange)),
    );
  }

  Widget buildAlternativeLogin() {
    return Container(
      child: Column(
        children: <Widget>[
          buildOrText(),
          SizedBox(
            height: 10.0,
          ),
          buildFbGoogleButtons(),
          SizedBox(height: 20.0),
          buildSignUpOption(),
        ],
      ),
    );
  }

  Widget buildOrText() {
    return Text(
      'Or',
      style: orStyle,
    );
  }

  Widget buildFbGoogleButtons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildFbButton(),
          buildGoogleButton(),
        ],
      ),
    );
  }

  Widget buildFbButton() {
    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(),
        onPressed: () {},
        height: 40,
        colorBrightness: Brightness.dark,
        child: Row(
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.facebook,
              color: Colors.blue,
            ),
            Text(
              '  facebook',
              style: textLogin.copyWith(
                color: Colors.blue,
              ),
            ),
          ],
        ),
        color: white,
        focusColor: orange,
        elevation: 3,
      ),
    );
  }

  Widget buildGoogleButton() {
    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(),
        onPressed: () {},
        height: 40,
        colorBrightness: Brightness.dark,
        child: Row(
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.google,
              color: Colors.blue,
            ),
            Text(
              '  Google',
              style: textLogin.copyWith(
                color: Colors.blue,
              ),
            ),
          ],
        ),
        color: white,
        focusColor: orange,
        elevation: 3,
      ),
    );
  }

  Widget buildSignUpOption() {
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(
            children: <Widget>[
              Text(
                'Dont have an account? ',
                style: orStyle.copyWith(
                  letterSpacing: 0,
                  color: black,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Text(
                  'Sign Up',
                  style: orStyle.copyWith(
                    color: orange,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
