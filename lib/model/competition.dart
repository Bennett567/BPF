import 'package:equatable/equatable.dart';
import 'package:partner_finder/model/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'competition.g.dart';

@JsonSerializable()
class Competition extends Equatable {
  final List<User> lookingForPartner;
  final String name;
  final int entryFee;
  final DateTime startTime;
  final String location;

  factory Competition.fromJson(Map<String, dynamic> json) =>
      _$CompetitionFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitionToJson(this);

  Competition(
    this.lookingForPartner,
    this.name,
    this.entryFee,
    this.startTime,
    this.location,
  );

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
  @override
  bool get stringify => true;
}
