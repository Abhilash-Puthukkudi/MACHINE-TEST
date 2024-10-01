import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner4.g.dart';

@JsonSerializable()
class Banner4 extends Equatable {
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

  const Banner4({
    this.id,
    this.linkType,
    this.linkValue,
    this.image,
    this.title,
    this.subTitle,
    this.logo,
  });

  factory Banner4.fromJson(Map<String, dynamic> json) {
    return _$Banner4FromJson(json);
  }

  Map<String, dynamic> toJson() => _$Banner4ToJson(this);

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
