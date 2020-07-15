import "package:flutter/material.dart";
import 'package:partner_finder/model/competition.dart';
import 'package:partner_finder/model/user.dart';

class CompetitionTile extends StatefulWidget {
  final Competition competition;

  CompetitionTile(this.competition);
  @override
  _CompetitionTileState createState() => _CompetitionTileState();
}

class _CompetitionTileState extends State<CompetitionTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
        child: Column(children: <Widget>[
          Center(
            child: Text(
              widget.competition.name,
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 20),
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
                        "Start time: ${widget.competition.startTime}",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Location: ${widget.competition.location}",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Entry fee: ${widget.competition.entryFee} Ft",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 15),
                      ),
                    ]),
                DropdownButton<String>(
                  hint: Text(
                    'Partnert keres: ',
                    style: TextStyle(fontSize: 15),
                  ),
                  items: widget.competition.lookingForPartner.map((User item) {
                    return DropdownMenuItem(
                      value: item.displayName,
                      child: Text(item.displayName,
                          textDirection: TextDirection.ltr),
                    );
                  }).toList(),
                  onChanged: (String newVal) {},
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
