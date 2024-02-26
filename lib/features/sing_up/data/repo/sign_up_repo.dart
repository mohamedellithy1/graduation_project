import 'package:graduation_project/core/networking/api_error_handler.dart';
import 'package:graduation_project/core/networking/api_result.dart';
import 'package:graduation_project/core/networking/api_service.dart';
import 'package:graduation_project/features/sing_up/data/models/sign_up_request_body.dart';
import 'package:graduation_project/features/sing_up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponse>> signup(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final respones = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(respones);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
