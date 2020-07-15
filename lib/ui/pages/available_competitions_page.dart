import 'package:flutter/material.dart';
import 'package:partner_finder/model/competition.dart';
import 'package:partner_finder/model/user.dart';
import 'package:partner_finder/ui/widgets/competition_tile.dart';

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
          return CompetitionTile(generateCompetition());
        },
      ),
    );
  }

  Competition generateCompetition() {
    User john = User("John", "john@gmail.com", "pro");
    User james = User("James", "james@gmail.com", "intermediate");
    User jason = User("Jason", "jason@gmail.com", "noob");

    return Competition([john, james, jason], "Best bridge competition ever",
        900, DateTime(2020, 09, 22, 9, 0), "Unknown");
  }
}
