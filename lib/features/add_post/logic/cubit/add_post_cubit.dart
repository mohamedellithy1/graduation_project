import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/add_post/data/model/add_post_request_body.dart';
import 'package:graduation_project/features/add_post/data/repo/add_post_repo.dart';
import 'package:graduation_project/features/add_post/logic/cubit/add_post_state.dart';
import 'package:graduation_project/features/sing_up/data/models/sign_up_request_body.dart';
import 'package:graduation_project/features/sing_up/data/repo/sign_up_repo.dart';
import 'package:graduation_project/features/sing_up/logic/cubit/sign_up_state.dart';

class AddPostCubit extends Cubit<AddPostState> {
  final AddPostRepo _signUpRepo;
  AddPostCubit(this._signUpRepo) : super(const AddPostState.initial());

  TextEditingController categoryController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController loacationController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  void snedPost({
    required String category,
    required String content,
    required String loacation,
    List<File>? img,
  }) async {
    emit(const AddPostState.loading());
    final respons = await _signUpRepo.sendPost(AddPostRequestBody(
      category: categoryController.text,
      content: contentController.text,
      images: img,
      location: loacationController.text,
    ));
    respons.when(success: (sendPostresponse) {
      emit(AddPostState.success(sendPostresponse));
    }, failure: (erorr) {
      emit(AddPostState.failure(error: erorr.apiErrorModel.message ?? ''));
    });
  }
}
