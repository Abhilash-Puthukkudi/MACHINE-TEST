// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BestSeller _$BestSellerFromJson(Map<String, dynamic> json) => BestSeller(
      productId: (json['productId'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      code: json['code'] as String?,
      homeImg: json['home_img'] as String?,
      name: json['name'] as String?,
      isGender: json['is_gender'],
      store: json['store'] as String?,
      manufacturer: json['manufacturer'] as String?,
      oldprice: json['oldprice'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      cart: (json['cart'] as num?)?.toInt(),
      wishlist: (json['wishlist'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BestSellerToJson(BestSeller instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'slug': instance.slug,
      'code': instance.code,
      'home_img': instance.homeImg,
      'name': instance.name,
      'is_gender': instance.isGender,
      'store': instance.store,
      'manufacturer': instance.manufacturer,
      'oldprice': instance.oldprice,
      'price': instance.price,
      'image': instance.image,
      'cart': instance.cart,
      'wishlist': instance.wishlist,
    };
