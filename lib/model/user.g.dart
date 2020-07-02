// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['displayName'] as String,
    json['email'] as String,
    json['ownerOfClub'] == null
        ? null
        : Clubs.fromJson(json['ownerOfClub'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'ownerOfClub': instance.ownerOfClub,
    };
