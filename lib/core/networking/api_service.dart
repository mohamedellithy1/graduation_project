import 'package:dio/dio.dart';
import 'package:graduation_project/core/networking/api_constance.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_response.dart';
import 'package:graduation_project/features/login/data/models/login_request_body.dart';
import 'package:graduation_project/features/login/data/models/login_response.dart';
import 'package:graduation_project/features/sing_up/data/models/sign_up_request_body.dart';
import 'package:graduation_project/features/sing_up/data/models/sign_up_response.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstance.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstance.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  
  @POST(ApiConstance.signup)
  Future<SignUpResponse> signup(@Body() SignUpRequestBody signUpRequestBody);
  
  @GET(ApiConstance.postLast10)
  Future<GetHomeDataResponse> getPostLast10();
}
