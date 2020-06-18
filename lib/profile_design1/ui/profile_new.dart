import 'package:flutter/material.dart';
import 'package:nelson_uis/profile_design1/constants/colors.dart';

class ProfileTrialAgain extends StatefulWidget {
  @override
  _ProfileTrialAgainState createState() => _ProfileTrialAgainState();
}

class _ProfileTrialAgainState extends State<ProfileTrialAgain> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: purple,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: grey.withOpacity(0.8),
          ),
          _buildTopBar(height),
          _buildAvatar(height),
          _form(height, width),
        ],
      ),
    );
  }

  Widget _buildTopBar(height) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(top: height * .05),
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

  Widget _form(height, width) {
    return SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0),
                ),
              ),
              margin: EdgeInsets.only(
                top: height * .28,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 16.0,
                  right: 16.0,
                  bottom: 28.0,
                ),
                child: Column(
                  children: <Widget>[
                    _buildTextTitle('Profile Settings'),
                    _buildDivider(),
                    _buildTextRowMore(
                        'Theme', "Light", Icons.arrow_forward_ios),
                    _buildTextRowWithSwitch(
                        'Send Push Notifications', false, grey),
                    _buildTextRowWithSwitch('Backups', true, purple),
                    _buildSpacer(40.0),
                    _buildTextTitle('Account'),
                    _buildDivider(),
                    _buildTextRow(
                        "Two-Factor Authentication", Icons.arrow_forward_ios),
                    _buildSpacer(20.0),
                    _buildTextRow("Mobile Data Use", Icons.arrow_forward_ios),
                    _buildSpacer(20.0),
                    _buildTextRowMore(
                        'Language', "Light", Icons.arrow_forward_ios),
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
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar(height) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 28.0,
      ),
      child: Container(
        margin: EdgeInsets.only(top: height * .2),
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
      color: grey,
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
}
