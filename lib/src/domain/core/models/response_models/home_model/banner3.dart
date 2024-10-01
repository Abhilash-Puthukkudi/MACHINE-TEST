import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner3.g.dart';

@JsonSerializable()
class Banner3 extends Equatable {
  final int? id;
  @JsonKey(name: 'link_type')
  final int? linkType;
  @JsonKey(name: 'link_value')
  final String? linkValue;
  final String? image;
  final String? title;
  @JsonKey(name: 'sub_title')
  final String? subTitle;
  final dynamic logo;

  const Banner3({
    this.id,
    this.linkType,
    this.linkValue,
    this.image,
    this.title,
    this.subTitle,
    this.logo,
  });

  factory Banner3.fromJson(Map<String, dynamic> json) {
    return _$Banner3FromJson(json);
  }

  Map<String, dynamic> toJson() => _$Banner3ToJson(this);

  @override
  List<Object?> get props {
    return [
      id,
      linkType,
      linkValue,
      image,
      title,
      subTitle,
      logo,
    ];
  }
}
