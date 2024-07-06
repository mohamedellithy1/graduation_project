import 'dart:isolate';

import 'package:graduation_project/core/networking/api_error_handler.dart';
import 'package:graduation_project/core/networking/api_result.dart';
import 'package:graduation_project/core/networking/api_service.dart';
import 'package:graduation_project/features/add_post/data/model/add_post_request_body.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_paid_response.dart';
import 'package:graduation_project/features/sing_up/data/models/sign_up_request_body.dart';
import 'package:graduation_project/features/sing_up/data/models/sign_up_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPostRepo {
  final ApiService _apiService;
  AddPostRepo(this._apiService);
    String? token;
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> fetchData() async {
    token = await getToken();
  }

  Future<ApiResult<GetHomeDataPaidResponse>> sendPost(
      AddPostRequestBody addPostRequestBody) async {
    try {
      final respones = await _apiService.sendPost(
        category:addPostRequestBody.category! ,
        content: addPostRequestBody.content!,
        images: addPostRequestBody.images! ,
        location: addPostRequestBody.location!,
        token: token!,
      );
      return ApiResult.success(respones);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
