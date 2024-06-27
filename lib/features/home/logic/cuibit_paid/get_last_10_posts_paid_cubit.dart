import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_paid_response.dart';
import 'package:graduation_project/features/home/data/repo/home_repo.dart';
import 'package:graduation_project/features/home/data/repo/home_repo_paid.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_state.dart';
import 'package:graduation_project/features/home/logic/cuibit_paid/get_last_10_posts_paid_state.dart';

class GetLast10PostsPaidCubit extends Cubit<GetLast10PostsPaidState<List<Posts>>> {
  final GetLast10PostPaidRepo _getLast10PostPaidRepo;
  List<Posts>? posts = [];
  GetLast10PostsPaidCubit(this._getLast10PostPaidRepo, {this.posts})
      : super(const GetLast10PostsPaidState.initial());

  void getLast10Posts() async {
    emit(const GetLast10PostsPaidState.loading());
    final response = await _getLast10PostPaidRepo.getLast10PostPaid();
    response.when(
      success: (result) {
        print(",,,,,,,,,,,,,,,,,,$result");
        posts = result.data?.posts;
        print(
            "length ?>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>,,,,,,,,,,,,,,,,,,${posts?.length}");
        emit(GetLast10PostsPaidState.success(result.data?.posts ?? []));
      },
      failure: (error) {
        emit(GetLast10PostsPaidState.failuer(
            message: error.apiErrorModel.message ??
                '')); // Corrected 'failuer' to 'failure'
      },
    );
  }
}
