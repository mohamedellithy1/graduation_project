import 'package:graduation_project/core/helper/app_pref.dart';
import 'package:graduation_project/core/networking/api_error_handler.dart';
import 'package:graduation_project/core/networking/api_result.dart';
import 'package:graduation_project/core/networking/api_service.dart';
import 'package:graduation_project/features/all_category/data/model/get_category_response.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_paid_response.dart';

class GetCategoryRepo {
  final ApiService _apiService;

  GetCategoryRepo(this._apiService );

  Future<ApiResult<GetCategoryResponse>> getCategory(
    {required String category , required String token }
  ) async {
    try {
      final GetCategoryResponse response = await _apiService.getCategory(
         category: category.toString() ,
         token: 'Bearer $token'
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
