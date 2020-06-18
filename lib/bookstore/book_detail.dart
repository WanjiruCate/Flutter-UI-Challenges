import 'package:flutter/material.dart';
import 'package:nelson_uis/profile_design1/constants/colors.dart';

class BookDetail extends StatefulWidget {
  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(''),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: white,
            // padding: EdgeInsets.symmetric(horizontal: height * .03),
            child: Column(
              children: <Widget>[
                //  SizedBox(height: height * .01),
                _buildName(height),
                SizedBox(height: height * .01),
                _buildSummary(height),
                SizedBox(height: height * .05),
                _buildHorizontalListTwo(height),
                SizedBox(height: height * .01),
                _buildTitleExtra(height),
                SizedBox(height: height * .02),
                Container(
                  height: height * .9,
                  child: ListView(
                    children: <Widget>[
                      _buildListTileTwo(height),
                      _buildListTileTwo(height),
                      _buildListTileTwo(height),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildListTileTwo(height) {
  return Container(
    padding: EdgeInsets.only(left: height * .024),
    child: Card(
      elevation: 5,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
                gradient: new LinearGradient(
                  colors: [
                    Color(0xFF14a0ee),
                    Color(0xFF1491ee),
                  ],
                  begin: FractionalOffset(0, 0),
                  end: FractionalOffset(1, 0),
                  stops: [0, 1],
                ),
              ),
              child: Image.asset('assets/novel3.jpeg'),
            ),
            title: Text(
              'International travel Waiting',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: black,
              ),
            ),
            subtitle: Text(
              "I’m just working on a little project here at Zajno creating a mobile app for a bookstore. Decided to share the first version with you to get your opinion on thi",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                //  fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 30,
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(48.0),
              gradient: new LinearGradient(
                colors: [
                  Color(0xFF14a0ee),
                  Color(0xFF1491ee),
                ],
                begin: FractionalOffset(0, 0.5),
                end: FractionalOffset(0.5, 0),
                stops: [0, 1],
              ),
            ),
            child: FlatButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text(
                'READ MORE',
                style: TextStyle(color: white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ),
  );
}

Widget _buildTitleExtra(height) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: height * .03),
    child: Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Text(
            'Architecture',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '8 Books',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildName(height) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: height * .03),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Arthur Ward',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 40,
          ),
        ),
        Icon(
          Icons.settings,
          color: Colors.grey,
        ),
      ],
    ),
  );
}

Widget _buildSummary(height) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: height * .03),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              '315',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              'Books',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              '315',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              'Read',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              '1.2K',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              'Following',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ],
        ),
        SizedBox(),
      ],
    ),
  );
}

Widget _buildHorizontalListTwo(height) {
  return Container(
    margin: EdgeInsets.only(
      // top: 10.0,
      //bottom: 10.0,
      left: 30.0,

      // horizontal: 5.0,
    ),
    height: height * .05,
    child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Text(
          "Workout Plan",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Reading Plan",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "My Reviews",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Profile",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ],
    ),
  );
}
