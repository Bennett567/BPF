import 'package:partner_finder/model/competition_details.dart';
import 'package:partner_finder/model/user.dart';
import 'package:rxdart/src/transformers/time_interval.dart';

class Competition extends CompetitionDetails {
  List<User> _lookingForPartner;

  Competition(
      String name,
      int entryFee,
      String description,
      TimeInterval duration,
      String location,
      DateTime startTime,
      this._lookingForPartner)
      : super(name, entryFee, description, duration, location, startTime);
}
