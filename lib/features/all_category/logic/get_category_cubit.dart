import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/all_category/data/model/get_category_response.dart';
import 'package:graduation_project/features/all_category/data/repo/get_category_repo.dart';
import 'package:graduation_project/features/all_category/logic/get_category_state.dart';

import '../../home/data/models/get_home_data_model/get_home_data_paid_response.dart';

class GetCategoryCubitS extends Cubit<GetCategoryState<List<Posts>>> {
  final GetCategoryRepo _getCategoryRepo;
  List<Posts>? categoryy = [];
  GetCategoryCubitS(this._getCategoryRepo, {this.categoryy})
      : super(const GetCategoryState.initial());

  void getCategory({
    required String category,
    required String token,
  }) async {
    emit(const GetCategoryState.loading());
    final response = await _getCategoryRepo.getCategory(
      category: category,
      token: token,
    );
    response.when(
      success: (result) {
        print(",,,,,,,,,,,,,,,,,,$result");
        categoryy = result.data?.posts;
        print(
            "length ?>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>,,,,,,,,,,,,,,,,,,${category?.length}");
        emit(GetCategoryState.success(result.data?.posts ?? []));
      },
      failure: (error) {
        emit(GetCategoryState.failuer(
            message: error.apiErrorModel.message ??
                '')); // Corrected 'failuer' to 'failure'
      },
    );
  }
}
