import 'package:flutter/material.dart';

class AvailableCompetitionsPage extends StatefulWidget {
  AvailableCompetitionsPage({Key key}) : super(key: key);

  @override
  _AvailableCompetitionsPageState createState() =>
      _AvailableCompetitionsPageState();
}

class _AvailableCompetitionsPageState extends State<AvailableCompetitionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elérhető versenyek'),
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
