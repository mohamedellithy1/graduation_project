import 'package:graduation_project/core/networking/api_error_handler.dart';
import 'package:graduation_project/core/networking/api_result.dart';
import 'package:graduation_project/core/networking/api_service.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_response.dart';

class GetLast10PostRepo {
  final ApiService _apiService;
  GetLast10PostRepo(this._apiService);

  Future<ApiResult<GetHomeDataResponse>> getLast10Post() async {
    try {
      final GetHomeDataResponse response = await _apiService.getPostLast10();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
