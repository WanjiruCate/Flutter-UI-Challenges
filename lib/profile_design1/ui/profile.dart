import 'package:flutter/material.dart';
import 'package:nelson_uis/profile_design1/constants/colors.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double circleRadius = 120.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: purple,
        child: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Stack(
              // alignment: Alignment.topCenter,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: circleRadius / 3.0,
                  ),

                  ///here we create space for the circle avatar to get ut of the box
                  child: Container(
                    height: 700.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),
                        topLeft: Radius.circular(50.0),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(0.0, 5.0),
                        ),
                      ],
                    ),
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    top: 40, left: 16, right: 16),
                                child: Column(
                                  children: <Widget>[
                                    _buildTextTitle('Profile Settings'),
                                    _buildDivider(),
                                    _buildTextRowMore('Theme', "Light",
                                        Icons.arrow_forward_ios),
                                    _buildTextRowWithSwitch(
                                        'Send Push Notifications', false, grey),
                                    _buildTextRowWithSwitch(
                                        'Backups', true, purple),
                                    _buildSpacer(40.0),
                                    _buildTextTitle('Account'),
                                    _buildDivider(),
                                    _buildTextRow("Two-Factor Authentication",
                                        Icons.arrow_forward_ios),
                                    _buildSpacer(20.0),
                                    _buildTextRow("Mobile Data Use",
                                        Icons.arrow_forward_ios),
                                    _buildSpacer(20.0),
                                    _buildTextRowMore('Language', "Light",
                                        Icons.arrow_forward_ios),
                                    _buildSpacer(40.0),
                                    _buildTextTitle('Support'),
                                    _buildDivider(),
                                    _buildSimpleText('Call Us'),
                                    _buildSpacer(20.0),
                                    _buildSimpleText('Feedback'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),

                ///Image Avatar
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(0.0, 5.0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Center(
                        child: Container(
                          child: Icon(
                            Icons.person,
                            size: 50.0,
                          ),

                          /// replace your image with the Icon
                        ),
                      ),
                    ),
                  ),
                ),

                ///Not Working yet
                Positioned(left: 150, top: 400, child: Text("erfhdjrlietgf")),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildAvatar(icon, double size1, size) {
    return Container(
      margin: EdgeInsets.only(top: 180),
      child: CircleAvatar(
        radius: size1,
        child: Icon(
          icon,
          size: size,
        ),
      ),
    );
  }

  Widget _buildProfileData() {
    return Column(
      children: <Widget>[
        _buildSimpleText('Catherine Wanjiru'),
        _buildSimpleText('Catherine Wanjiru'),
      ],
    );
  }

  Widget _buildFinal() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 180,
          left: 10,
          child: _buildAvatar(Icons.person, 25, 25.0),
        ),
        _buildContainer(),
      ],
    );
  }

  Widget _buildContainer() {
    return Container(
      decoration: BoxDecoration(
        color: purple,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
        ),
      ),
      width: double.infinity,
      margin: EdgeInsets.only(top: 200),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            top: 8.0,
            right: 16.0,
          ),
          child: Container(
            margin: EdgeInsets.only(top: 40, left: 16, right: 16),
            child: Column(
              children: <Widget>[
                _buildTextTitle('Profile Settings'),
                _buildDivider(),
                _buildTextRowMore('Theme', "Light", Icons.arrow_forward_ios),
                _buildTextRowWithSwitch('Send Push Notifications', false, grey),
                _buildTextRowWithSwitch('Backups', true, purple),
                _buildSpacer(40.0),
                _buildTextTitle('Account'),
                _buildDivider(),
                _buildTextRow(
                    "Two-Factor Authentication", Icons.arrow_forward_ios),
                _buildSpacer(20.0),
                _buildTextRow("Mobile Data Use", Icons.arrow_forward_ios),
                _buildSpacer(20.0),
                _buildTextRowMore('Language', "Light", Icons.arrow_forward_ios),
                _buildSpacer(40.0),
                _buildTextTitle('Support'),
                _buildDivider(),
                _buildSimpleText('Call Us'),
                _buildSpacer(20.0),
                _buildSimpleText('Feedback'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSimpleText(text) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: grey,
            fontSize: 20,
          ),
        )
      ],
    );
  }

  Widget _buildSpacer(height) {
    return SizedBox(
      height: 20.0,
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: white,
    );
  }

  Widget _buildTextRow(text, icon) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: grey,
            fontSize: 20,
          ),
        ),
        Spacer(),
        Icon(
          icon,
          color: grey,
        ),
      ],
    );
  }

  Widget _buildTextRowMore(text, text2, icon) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: grey,
            fontSize: 20,
          ),
        ),
        Spacer(),
        Row(children: <Widget>[
          Text(
            text2,
            style: TextStyle(color: grey),
          ),
          Icon(
            icon,
            color: grey,
            size: 25,
          ),
        ]),
      ],
    );
  }

  Widget _buildTextRowWithSwitch(text, bool isChanged, color) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: grey,
            fontSize: 20,
          ),
        ),
        Spacer(),
        Switch(
          value: isChanged,
          onChanged: (val) {},
          activeColor: color,
        ),
      ],
    );
  }

  Widget _buildTextTitle(text) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.arrow_back,
              color: black,
            ),
            Text(
              'Settings',
              style: TextStyle(color: black, fontSize: 28),
            ),
            Icon(
              Icons.more_horiz,
              color: black,
            ),
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
}
