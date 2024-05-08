import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_response.dart';
import 'package:graduation_project/features/home/data/repo/home_repo.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_state.dart';

class GetLast10PostsCubit extends Cubit<GetLast10PostsState<List<Posts>>> {
  final GetLast10PostRepo _getLast10PostRepo;
  List<Posts>? posts = [];
  GetLast10PostsCubit(this._getLast10PostRepo, {this.posts})
      : super(const GetLast10PostsState.initial());

  void getLast10Posts() async {
    // Renamed the method to getLast10Posts
    emit(const GetLast10PostsState.loading());
    final response = await _getLast10PostRepo.getLast10Post();
    // Added 'await' here to wait for the response
    response.when(
      success: (result) {
        print(",,,,,,,,,,,,,,,,,,$result");
        posts = result.data?.posts;
        print(
            "length ?>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>,,,,,,,,,,,,,,,,,,${posts?.length}");
        emit(GetLast10PostsState.success(result.data?.posts ?? []));
      },
      failure: (error) {
        emit(GetLast10PostsState.failuer(
            message: error.apiErrorModel.message ??
                '')); // Corrected 'failuer' to 'failure'
      },
    );
  }
}
