import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner1.g.dart';

@JsonSerializable()
class Banner1 extends Equatable {
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

  const Banner1({
    this.id,
    this.linkType,
    this.linkValue,
    this.image,
    this.title,
    this.subTitle,
    this.logo,
  });

  factory Banner1.fromJson(Map<String, dynamic> json) {
    return _$Banner1FromJson(json);
  }

  Map<String, dynamic> toJson() => _$Banner1ToJson(this);

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
