import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:partner_finder/model/competition.dart';
import 'package:partner_finder/model/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clubs.g.dart';

@JsonSerializable()
class Clubs extends Equatable {
  final String location;
  final List<User> members;
  final List<Competition> competitions;
  final User owner;
  Clubs(this.competitions, this.location, this.members, this.owner);

  factory Clubs.fromJson(Map<String, dynamic> json) => _$ClubsFromJson(json);

  Map<String, dynamic> toJson() => _$ClubsToJson(this);

  @override
  // TODO: implement props
  List<Object> get props => [location, members, competitions, owner];

  @override
  bool get stringify => true;
}
