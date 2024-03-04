// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shower_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowerDataImpl _$$ShowerDataImplFromJson(Map<String, dynamic> json) =>
    _$ShowerDataImpl(
      seconds: json['seconds'] as int,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$ShowerDataImplToJson(_$ShowerDataImpl instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
      'date': instance.date.toIso8601String(),
    };
