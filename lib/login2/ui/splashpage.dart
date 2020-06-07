import 'package:flutter/material.dart';
import 'package:nelson_uis/login2/utils/colors.dart';
import 'package:nelson_uis/login2/utils/texts.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 8.0,
        ),
        child: Column(
          //      fit: StackFit.expand,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: buildTitle(),
            ),
            Flexible(
              flex: 2,
              child: buildImageAsset(),
            ),
            Flexible(
              flex: 1,
              child: buildSignInContainers(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Center(
      child: Text(
        'Welcome  Back',
        style: titleText,
      ),
    );
  }

  Widget buildSignInContainers() {
    return Container(
      child: Column(
        children: <Widget>[
          MaterialButton(
            minWidth: double.infinity,
            onPressed: () {
              Navigator.of(context).pushNamed('/signup');
            },
            height: 45,
            clipBehavior: Clip.hardEdge,
            child: Text('Sign Up', style: textLogin),
            color: orange,
            hoverColor: orange,
            elevation: 3,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(7.0),
                side: BorderSide(color: orange)),
          ),
          SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(7.0),
                side: BorderSide(color: grey[300])),
            minWidth: double.infinity,
            onPressed: () {
              Navigator.of(context).pushNamed('/login2');
            },
            height: 45,
            child: Text(
              'Log In',
              style: TextStyle(
                color: black,
                fontSize: 17,
              ),
            ),
            color: Colors.grey[300],
            focusColor: orange,
            elevation: 3,
          ),
        ],
      ),
    );
  }

  Widget buildImageAsset() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
        ),
      ),
    );
  }
}
