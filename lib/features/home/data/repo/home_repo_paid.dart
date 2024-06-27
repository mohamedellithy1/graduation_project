import 'package:graduation_project/core/helper/app_pref.dart';
import 'package:graduation_project/core/networking/api_error_handler.dart';
import 'package:graduation_project/core/networking/api_result.dart';
import 'package:graduation_project/core/networking/api_service.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_paid_response.dart';

class GetLast10PostPaidRepo {
  final ApiService _apiService;

  GetLast10PostPaidRepo(this._apiService );

  Future<ApiResult<GetHomeDataPaidResponse>> getLast10PostPaid() async {
    try {
      final GetHomeDataPaidResponse response = await _apiService.getPostLast10paid();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
