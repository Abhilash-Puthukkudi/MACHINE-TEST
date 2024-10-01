import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'banner1.dart';
import 'banner3.dart';
import 'banner4.dart';
import 'best_seller.dart';
import 'category.dart';
import 'currency.dart';
import 'featuredbrand.dart';
import 'flash_sail.dart';
import 'our_product.dart';
import 'recentview.dart';
import 'suggested_product.dart';
import 'top_accessory.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel extends Equatable {
  final int? success;
  final String? message;
  final List<Banner1>? banner1;
  final List<dynamic>? banner2;
  final List<Banner3>? banner3;
  final List<Banner4>? banner4;
  final List<dynamic>? banner5;
  final List<Recentview>? recentviews;
  @JsonKey(name: 'our_products')
  final List<OurProduct>? ourProducts;
  @JsonKey(name: 'suggested_products')
  final List<SuggestedProduct>? suggestedProducts;
  @JsonKey(name: 'best_seller')
  final List<BestSeller>? bestSeller;
  @JsonKey(name: 'flash_sail')
  final List<FlashSail>? flashSail;
  final List<dynamic>? newarrivals;
  final List<Category>? categories;
  @JsonKey(name: 'top_accessories')
  final List<TopAccessory>? topAccessories;
  final List<Featuredbrand>? featuredbrands;
  final int? cartcount;
  final int? wishlistcount;
  final Currency? currency;
  @JsonKey(name: 'notification_count')
  final int? notificationCount;

  const HomeModel({
    this.success,
    this.message,
    this.banner1,
    this.banner2,
    this.banner3,
    this.banner4,
    this.banner5,
    this.recentviews,
    this.ourProducts,
    this.suggestedProducts,
    this.bestSeller,
    this.flashSail,
    this.newarrivals,
    this.categories,
    this.topAccessories,
    this.featuredbrands,
    this.cartcount,
    this.wishlistcount,
    this.currency,
    this.notificationCount,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);

  @override
  List<Object?> get props {
    return [
      success,
      message,
      banner1,
      banner2,
      banner3,
      banner4,
      banner5,
      recentviews,
      ourProducts,
      suggestedProducts,
      bestSeller,
      flashSail,
      newarrivals,
      categories,
      topAccessories,
      featuredbrands,
      cartcount,
      wishlistcount,
      currency,
      notificationCount,
    ];
  }
}
