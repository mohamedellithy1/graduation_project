import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/extensions.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_response.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_cubit.dart';

class PostItems extends StatelessWidget {
  const PostItems({super.key, required this.index});
  final int index;
  // final  index;

  @override
  Widget build(BuildContext context) {
    final posts = context.read<GetLast10PostsCubit>().posts;
    debugPrint('image >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>${posts?.length}');
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.network(
            ('${posts?[index].user?.photo?.url}'),
            height: 300.h,
            width: 400.w,
            fit: BoxFit.fill,
          ),
          verticalSpace(16),
          Text('${posts?[index].content}'),
          verticalSpace(20),
          const Text('الوصف'),
          verticalSpace(10),
          Text('${posts?[index].content}'),
          verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('${posts?[index].createdAt}'),
                  horizontalSpace(4),
                  const Icon(Icons.timer_outlined)
                ],
              ),
              Row(
                children: [
                  Text('${posts?[index].location}'),
                  horizontalSpace(4),
                  const Icon(Icons.place)
                ],
              ),
              Row(
                children: [
                  Text('${posts?[index].category}'),
                  horizontalSpace(4),
                  const Icon(Icons.category_outlined)
                ],
              ),
            ],
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('${posts![index].user!.name}'),
              horizontalSpace(25),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('${posts[index].user?.photo!.url}'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          verticalSpace(10),
          AppTextButton(
              buttonText: 'التفاصيل',
              textStyle: TextStyles.font16whiteSemiBold,
              onPressed: () {
                context.pushNamed(Routes.details);
              })
        ],
      ),
    );
  }
}
