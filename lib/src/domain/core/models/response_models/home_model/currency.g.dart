// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      name: json['name'] as String?,
      code: json['code'] as String?,
      symbolLeft: json['symbol_left'] as String?,
      symbolRight: json['symbol_right'] as String?,
      value: json['value'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'symbol_left': instance.symbolLeft,
      'symbol_right': instance.symbolRight,
      'value': instance.value,
      'status': instance.status,
    };
