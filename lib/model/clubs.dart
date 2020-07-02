import 'dart:core';

import 'package:partner_finder/model/competition.dart';
import 'package:partner_finder/model/user.dart';

class Clubs {
  final String location;
  final List<User> members;
  final List<Competition> competitions;
  final User owner;
  Clubs(this.competitions, this.location, this.members, this.owner);
}
