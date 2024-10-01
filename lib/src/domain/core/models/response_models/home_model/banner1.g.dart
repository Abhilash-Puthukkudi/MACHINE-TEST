// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banner1 _$Banner1FromJson(Map<String, dynamic> json) => Banner1(
      id: (json['id'] as num?)?.toInt(),
      linkType: (json['link_type'] as num?)?.toInt(),
      linkValue: json['link_value'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
      logo: json['logo'],
    );

Map<String, dynamic> _$Banner1ToJson(Banner1 instance) => <String, dynamic>{
      'id': instance.id,
      'link_type': instance.linkType,
      'link_value': instance.linkValue,
      'image': instance.image,
      'title': instance.title,
      'sub_title': instance.subTitle,
      'logo': instance.logo,
    };
