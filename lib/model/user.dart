import 'package:equatable/equatable.dart';
import 'package:partner_finder/model/clubs.dart';

import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  final String displayName;
  final String email;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
  User(
    this.displayName,
    this.email,
  );

  @override
  // TODO: implement props
  List<Object> get props => [displayName, email];
  @override
  bool get stringify => true;
}
