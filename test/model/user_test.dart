import 'dart:convert';

import 'package:partner_finder/model/clubs.dart';
import 'package:partner_finder/model/competition.dart';
import 'package:partner_finder/model/user.dart';
import 'package:test/test.dart';

void main() {
  test('Map', () {
    final String test = 'asdfghj';
    final List<User> list = List<User>();
    final User mezei = User(
        'mazei', 'b@gmail.com', "BestestNinjonProGamerBridgeGodUltimatemaster");
    final List<Competition> a = List<Competition>();
    final Clubs pala = Clubs(a, 'itt', list, mezei);
    final User user = User("Béla", "peepeepoopoo@gmail.com", "Patrik");
    int val = user.toJson().toString().compareTo(jsonEncode(user).toString());
    expect(val, 1);
  });

  test("Fields should be returned.", () {
    final List<User> lookingForPartner = List<User>();
    final competition = Competition(
        lookingForPartner, "name", 1200, DateTime.now(), "location");
    expect(competition.props, [
      competition.lookingForPartner,
      competition.name,
      competition.entryFee,
      competition.startTime,
      competition.location
    ]);
  });
}
