import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:machine_test/src/domain/core/app_url/app_urls.dart';
import 'package:machine_test/src/domain/core/failures/api_failure.dart';
import 'package:machine_test/src/domain/core/internet_service/i_base_client.dart';
import 'package:machine_test/src/domain/core/models/response_models/home_model/home_model.dart';
import 'package:machine_test/src/domain/home/i_home_repository.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  final IBaseClient client;

  HomeRepository(this.client);
  @override
  Future<HomeModel> loadHome() async {
    try {
      final response = await client.post(url: AppUrls.homeUrl, body: {}).timeout(
        const Duration(seconds: 30),
      );
      final decode = jsonDecode(response.body) as Map<String, dynamic>;
      return HomeModel.fromJson(decode);
    } on TimeoutException {
      throw ApiFailure("Request timeout please try Again!");
    } catch (e) {
      rethrow;
    }
  }
}
