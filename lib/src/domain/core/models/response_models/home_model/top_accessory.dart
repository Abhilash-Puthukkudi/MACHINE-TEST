import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'top_accessory.g.dart';

@JsonSerializable()
class TopAccessory extends Equatable {
  final Category? category;

  const TopAccessory({this.category});

  factory TopAccessory.fromJson(Map<String, dynamic> json) {
    return _$TopAccessoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopAccessoryToJson(this);

  @override
  List<Object?> get props => [category];
}
