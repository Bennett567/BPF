import 'package:flutter/material.dart';
import 'available_competitions_page.dart';

class RegisteredCompetitionsPage extends StatefulWidget {
  @override
  _RegisteredCompetitionsPageState createState() =>
      _RegisteredCompetitionsPageState();
}

class _RegisteredCompetitionsPageState
    extends State<RegisteredCompetitionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Versenyeid'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AvailableCompetitionsPage()));
              })
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return;
        },
      ),
    );
  }
}
