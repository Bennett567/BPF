import 'package:equatable/equatable.dart';
import 'package:partner_finder/model/clubs.dart';

import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  final String displayName;
  final String email;
  final Clubs ownerOfClub;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
  User(this.displayName, this.email, this.ownerOfClub);

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
  @override
  bool get stringify => true;
}
