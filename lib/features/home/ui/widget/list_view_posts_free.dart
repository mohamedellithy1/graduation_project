import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_cubit.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_state.dart';
import 'package:graduation_project/features/home/ui/widget/post_items.dart';

class ListViewPosts extends StatefulWidget {
  const ListViewPosts({super.key});

  @override
  State<ListViewPosts> createState() => _ListViewPostsState();
}

class _ListViewPostsState extends State<ListViewPosts> {
  // @override
  // void initState() {
  //   context.read<GetLast10PostsCubit>().getLast10Posts();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetLast10PostsCubit, GetLast10PostsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          success: (r) => Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
                      child: PostItems(indexx: index),
                    ),
                itemCount: context.read<GetLast10PostsCubit>().posts?.length),
          ),
          failuer: (error) => Center(
            child: InkWell(
              onTap: () {
                context.read<GetLast10PostsCubit>().getLast10Posts();
              },
              child: const Icon(
                Icons.refresh,
                color: ColorsManager.mainBlue,
                size: 30,
              ),
            ),
          ),
        );
      },
    );
  }
}
