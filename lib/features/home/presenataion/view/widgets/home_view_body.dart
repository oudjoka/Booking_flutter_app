import 'package:booking/core/utils/styles.dart';
import 'package:booking/features/home/presenataion/view/widgets/custom_app_bar.dart';
import 'package:booking/features/home/presenataion/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text('Best Seller', style: Styles.titleMeduim),
        ],
      ),
    );
  }
}
