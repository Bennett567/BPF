import 'dart:core';

import 'package:partner_finder/model/competition.dart';
import 'package:partner_finder/model/user.dart';

class Clubs {
  String _location;
  List<User> _members;
  List<Competition> _competitions;
  User _owner;
  Clubs(this._competitions, this._location, this._members, this._owner);
}
