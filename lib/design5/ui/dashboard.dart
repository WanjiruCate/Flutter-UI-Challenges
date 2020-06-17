import 'package:flutter/material.dart';
import 'package:nelson_uis/design5/utils/colors.dart';
import 'package:nelson_uis/design5/utils/models.dart';

class Dashboard extends StatefulWidget {
  RecordData recordData;
  Dashboard(this.recordData);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  RecordData recordData;
  List<RecordData> _data = RecordData.loadData;

  @override
  void initState() {
    recordData = widget.recordData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8.0,
            ),
            child: Column(
              children: <Widget>[
                _topbar(),
                SizedBox(height: 20.0),
                _textsListTile('List of Accounts'),
                SizedBox(height: 20.0),
                _textsRecordTile('List of Records Overview'),
             //   _listRecordsView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _textsListTile(text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: black,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _textsRecordTile(text) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: black,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

  Widget _bellIcon() {
    return Icon(
      Icons.notifications,
      color: black,
    );
  }

  Widget _title() {
    return Text(
      'Dashboard',
      style: TextStyle(
        color: black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _drawerIcon() {
    return Icon(
      Icons.more_horiz,
      color: black,
    );
  }

  Widget _topbar() {
    return AppBar(
      title: _title(),
      centerTitle: true,
      backgroundColor: white,
      elevation: 0,
      leading: _drawerIcon(),
      actions: <Widget>[
        _bellIcon(),
      ],
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,

      // _drawerIcon(),
      // _title(),
      // _bellIcon(),
    );
  }

  Widget _listRecordsView() {
    ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext ctxt, int index) {
          return new Text('riufygdhcn');
          //Text(_data[index].recordAcountTypeBalance);
        });
  }

  Widget _cardList() {
    return Card(
      color: purple,
      child: Column(
        children: <Widget>[
          Text('Bank'),
          Text('4900'),
        ],
      ),
    );
  }

  Widget _listTileList() {
    return ListTile();
  }

  Widget _textsCustom(text) {
    return Text(text);
  }

  Widget _buttonCustomAccount(text, color) {
    return RaisedButton(
      onPressed: () {},
      child: Text(text),
      color: color,
    );
  }

  Widget _buttonCustomList(icon, color) {
    return Container(
      height: 50,
      width: 50,
      color: color,
      child: Icon(icon),
    );
  }

  Widget _textsListColumn(text, text1) {
    return Column(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text1,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _textsTrailing() {
    return Column(
      children: <Widget>[
        Text(
          'text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'text1',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _listTile() {
    return Container(
      child: Stack(
        children: <Widget>[
          _buttonCustomList(Icons.ac_unit, purple),
          _textsListColumn('Groceries', 'Credit Card'),
          _textsTrailing(),
        ],
      ),
    );
  }
}
