// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_accessory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopAccessory _$TopAccessoryFromJson(Map<String, dynamic> json) => TopAccessory(
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopAccessoryToJson(TopAccessory instance) =>
    <String, dynamic>{
      'category': instance.category,
    };
