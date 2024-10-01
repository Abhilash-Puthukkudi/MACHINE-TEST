import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'featuredbrand.g.dart';

@JsonSerializable()
class Featuredbrand extends Equatable {
  final int? id;
  final String? image;
  final String? slug;
  final String? name;

  const Featuredbrand({this.id, this.image, this.slug, this.name});

  factory Featuredbrand.fromJson(Map<String, dynamic> json) {
    return _$FeaturedbrandFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FeaturedbrandToJson(this);

  @override
  List<Object?> get props => [id, image, slug, name];
}
