// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Competition _$CompetitionFromJson(Map<String, dynamic> json) {
  return Competition(
    (json['lookingForPartner'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['name'] as String,
    json['entryFee'] as int,
    json['startTime'] == null
        ? null
        : DateTime.parse(json['startTime'] as String),
    json['location'] as String,
  );
}

Map<String, dynamic> _$CompetitionToJson(Competition instance) =>
    <String, dynamic>{
      'lookingForPartner': instance.lookingForPartner,
      'name': instance.name,
      'entryFee': instance.entryFee,
      'startTime': instance.startTime?.toIso8601String(),
      'location': instance.location,
    };
