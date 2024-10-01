// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      success: (json['success'] as num?)?.toInt(),
      message: json['message'] as String?,
      banner1: (json['banner1'] as List<dynamic>?)
          ?.map((e) => Banner1.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner2: json['banner2'] as List<dynamic>?,
      banner3: (json['banner3'] as List<dynamic>?)
          ?.map((e) => Banner3.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner4: (json['banner4'] as List<dynamic>?)
          ?.map((e) => Banner4.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner5: json['banner5'] as List<dynamic>?,
      recentviews: (json['recentviews'] as List<dynamic>?)
          ?.map((e) => Recentview.fromJson(e as Map<String, dynamic>))
          .toList(),
      ourProducts: (json['our_products'] as List<dynamic>?)
          ?.map((e) => OurProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggestedProducts: (json['suggested_products'] as List<dynamic>?)
          ?.map((e) => SuggestedProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSeller: (json['best_seller'] as List<dynamic>?)
          ?.map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
      flashSail: (json['flash_sail'] as List<dynamic>?)
          ?.map((e) => FlashSail.fromJson(e as Map<String, dynamic>))
          .toList(),
      newarrivals: json['newarrivals'] as List<dynamic>?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      topAccessories: (json['top_accessories'] as List<dynamic>?)
          ?.map((e) => TopAccessory.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredbrands: (json['featuredbrands'] as List<dynamic>?)
          ?.map((e) => Featuredbrand.fromJson(e as Map<String, dynamic>))
          .toList(),
      cartcount: (json['cartcount'] as num?)?.toInt(),
      wishlistcount: (json['wishlistcount'] as num?)?.toInt(),
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      notificationCount: (json['notification_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'banner1': instance.banner1,
      'banner2': instance.banner2,
      'banner3': instance.banner3,
      'banner4': instance.banner4,
      'banner5': instance.banner5,
      'recentviews': instance.recentviews,
      'our_products': instance.ourProducts,
      'suggested_products': instance.suggestedProducts,
      'best_seller': instance.bestSeller,
      'flash_sail': instance.flashSail,
      'newarrivals': instance.newarrivals,
      'categories': instance.categories,
      'top_accessories': instance.topAccessories,
      'featuredbrands': instance.featuredbrands,
      'cartcount': instance.cartcount,
      'wishlistcount': instance.wishlistcount,
      'currency': instance.currency,
      'notification_count': instance.notificationCount,
    };
