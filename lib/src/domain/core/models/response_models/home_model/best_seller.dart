import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'best_seller.g.dart';

@JsonSerializable()
class BestSeller extends Equatable {
  final int? productId;
  final String? slug;
  final String? code;
  @JsonKey(name: 'home_img')
  final String? homeImg;
  final String? name;
  @JsonKey(name: 'is_gender')
  final dynamic isGender;
  final String? store;
  final String? manufacturer;
  final String? oldprice;
  final String? price;
  final String? image;
  final int? cart;
  final int? wishlist;

  const BestSeller({
    this.productId,
    this.slug,
    this.code,
    this.homeImg,
    this.name,
    this.isGender,
    this.store,
    this.manufacturer,
    this.oldprice,
    this.price,
    this.image,
    this.cart,
    this.wishlist,
  });

  factory BestSeller.fromJson(Map<String, dynamic> json) {
    return _$BestSellerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BestSellerToJson(this);

  @override
  List<Object?> get props {
    return [
      productId,
      slug,
      code,
      homeImg,
      name,
      isGender,
      store,
      manufacturer,
      oldprice,
      price,
      image,
      cart,
      wishlist,
    ];
  }
}
