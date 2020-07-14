import "package:flutter/material.dart";

class CompetitionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
        child: Column(children: <Widget>[
          Center(
            child: Text(
              "Best bridge competition ever",
              textDirection: TextDirection.ltr,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(
                    "Start time: 2020/13/32, 25:00",
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    "Location: Unknown",
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    "Entry fee: 2.99\$",
                    textDirection: TextDirection.ltr,
                  ),
                ]),
                Text(
                  "NBEREK",
                  textDirection: TextDirection.ltr,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return CompetitionTile();
      },
    );
  }
}
