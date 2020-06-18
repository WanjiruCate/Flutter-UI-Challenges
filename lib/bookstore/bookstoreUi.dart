import 'package:flutter/material.dart';
import 'package:nelson_uis/bookstore/colors.dart';

class BookStore extends StatefulWidget {
  @override
  _BookStoreState createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _appBar(height),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 20.0,
            // right: 10.0,
            left: 10.0,
          ),
          color: Color(0xFFf7fbfe),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildTitle(),
              _buildListTile(),
              _buildHorizontalListTwo(),
              _buildListTileTwo(),
              _buildHorizontalListTwo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHorizontalListTwo() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        // horizontal: 5.0,
      ),
      height: 200.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/novel4.jpg'),
              ),
            ),
            width: 160.0,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/novel3.jpeg'),
              ),
            ),
            width: 160.0,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/novel7.jpg'),
              ),
            ),
            width: 160.0,
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/novel6.jpg'),
              ),
            ),
            width: 160.0,
          ),
        ],
      ),
    );
  }

  Widget _buildListTileTwo() {
    return ListTile(
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
        child: Icon(
          Icons.perm_camera_mic,
          color: white,
          size: 40.0,
        ),
      ),
      trailing: Text(
        'All',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
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
        'New on the store',
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildListTile() {
    return ListTile(
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
        child: Icon(
          Icons.bookmark_border,
          color: white,
          size: 40.0,
        ),
      ),
      trailing: Text(
        'All',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
      ),
      title: Text(
        'Guides',
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: black,
        ),
      ),
      subtitle: Text(
        'New on the store',
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Travel Books',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
    );
  }

  Widget _appBar(height) {
    return AppBar(
      backgroundColor: white,
      title: Text(
        'All genres',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: black,
          fontSize: 30,
        ),
      ),
      actions: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: height * .04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              SizedBox(
                width: height * .03,
              ),
              Icon(
                Icons.filter,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
