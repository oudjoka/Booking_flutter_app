import 'package:booking/core/utils/styles.dart';
import 'package:booking/features/home/presenataion/view/widgets/newest_books_list_view.dart';
import 'package:booking/features/home/presenataion/view/widgets/custom_app_bar.dart';
import 'package:booking/features/home/presenataion/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('Newest books', style: Styles.textStyle18),
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: NewestbooksListView(),
          ),
        ),
      ],
    );
  }
}
