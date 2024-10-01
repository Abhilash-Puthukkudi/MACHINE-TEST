import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'currency.g.dart';

@JsonSerializable()
class Currency extends Equatable {
  final String? name;
  final String? code;
  @JsonKey(name: 'symbol_left')
  final String? symbolLeft;
  @JsonKey(name: 'symbol_right')
  final String? symbolRight;
  final String? value;
  final int? status;

  const Currency({
    this.name,
    this.code,
    this.symbolLeft,
    this.symbolRight,
    this.value,
    this.status,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return _$CurrencyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);

  @override
  List<Object?> get props {
    return [
      name,
      code,
      symbolLeft,
      symbolRight,
      value,
      status,
    ];
  }
}
