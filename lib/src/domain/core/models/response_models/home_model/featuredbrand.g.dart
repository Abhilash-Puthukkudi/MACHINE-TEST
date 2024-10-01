// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featuredbrand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Featuredbrand _$FeaturedbrandFromJson(Map<String, dynamic> json) =>
    Featuredbrand(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FeaturedbrandToJson(Featuredbrand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'slug': instance.slug,
      'name': instance.name,
    };
