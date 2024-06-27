import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/di/dependency_injection.dart';
import 'package:graduation_project/core/helper/extensions.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_cubit.dart';
import 'package:graduation_project/features/home/logic/cuibit_paid/get_last_10_posts_paid_cubit.dart';
import 'package:graduation_project/features/home/ui/widget/list_view_post_paid.dart';
import 'package:graduation_project/features/home/ui/widget/list_view_posts_free.dart';
import 'package:graduation_project/features/home/ui/widget/search_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ListViewPosts(),
    ListViewPostsPaid()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>$index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEBE8E8),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
              onTap: () {
                context.pushNamed(Routes.allCategory);
              },
              child: const Icon(Icons.menu)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.mainBlue,
        onPressed: () {
          context.pushNamed(Routes.addPost);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SearchSection(),
            Expanded(
              child: IndexedStack(
                index: _selectedIndex,
                children: [
                  BlocProvider(
                    create: (_) =>
                        getIt<GetLast10PostsCubit>()..getLast10Posts(),
                    child: const ListViewPosts(),
                  ),
                  BlocProvider(
                    create: (_) =>
                        getIt<GetLast10PostsPaidCubit>()..getLast10Posts(),
                    child: const ListViewPostsPaid(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorsManager.mainBlue,
        selectedFontSize: 18,
        backgroundColor: Colors.white,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_free),
            label: 'بدون مقابل',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.price_change_outlined),
            label: 'بمقابل',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
