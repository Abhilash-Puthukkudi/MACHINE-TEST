import 'package:machine_test/src/domain/core/models/response_models/home_model/home_model.dart';

abstract class IHomeRepository {
  Future<HomeModel> loadHome();
}
