// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clubs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clubs _$ClubsFromJson(Map<String, dynamic> json) {
  return Clubs(
    (json['competitions'] as List)
        ?.map((e) =>
            e == null ? null : Competition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['location'] as String,
    (json['members'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['owner'] == null
        ? null
        : User.fromJson(json['owner'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClubsToJson(Clubs instance) => <String, dynamic>{
      'location': instance.location,
      'members': instance.members,
      'competitions': instance.competitions,
      'owner': instance.owner,
    };
