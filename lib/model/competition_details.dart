import 'package:rxdart/rxdart.dart';

class CompetitionDetails {
  String _name;
  int _entryFee;
  DateTime _startTime;
  TimeInterval _duration;
  String _location;
  String _description;
  CompetitionDetails(this._name, this._entryFee, this._description,
      this._duration, this._location, this._startTime);
}
