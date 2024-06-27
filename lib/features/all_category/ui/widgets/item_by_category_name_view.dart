import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/features/all_category/ui/widgets/categort_item_by_name.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_cubit.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_state.dart';
import 'package:graduation_project/features/home/logic/cuibit_paid/get_last_10_posts_paid_cubit.dart';
import 'package:graduation_project/features/home/logic/cuibit_paid/get_last_10_posts_paid_state.dart';
import 'package:graduation_project/features/home/ui/widget/post_item_paid.dart';

class ListViewItemByCategory extends StatefulWidget {
  const ListViewItemByCategory({super.key, this.categoryName});
  final String? categoryName;

  @override
  State<ListViewItemByCategory> createState() => _ListViewPostsPaidState();
}

class _ListViewPostsPaidState extends State<ListViewItemByCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.categoryName!),
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
        ),
        // BlocBuilder<GetLast10PostsPaidCubit, GetLast10PostsPaidState>(
        //   builder: (context, state) {
        //     return state.when(
        //       initial: () => const SizedBox.shrink(),
        //       loading: () => const Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           CircularProgressIndicator(),
        //         ],
        //       ),
        //       success: (r) => Expanded(
        //         child:
        body: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
                  child: CategortItemByName(
                    indexx: index,
                    categoryName: widget.categoryName ?? '',
                  ),
                ),
            itemCount: 10
            //  context.read<GetLast10PostsPaidCubit>().posts?.length
            )
        //       ),
        //       failuer: (error) => Center(
        //         child: InkWell(
        //           onTap: () {
        //             context.read<GetLast10PostsPaidCubit>().getLast10Posts();
        //           },
        //           child: const Icon(
        //             Icons.refresh,
        //             color: ColorsManager.mainBlue,
        //             size: 30,
        //           ),
        //         ),
        //       ),
        //     );
        //   },
        // );
        );
  }
}
