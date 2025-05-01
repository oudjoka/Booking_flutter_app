import 'package:booking/core/utils/assets.dart';
import 'package:booking/features/home/presenataion/view/widgets/custom_app_bar.dart';
import 'package:booking/features/home/presenataion/view/widgets/custom_list_view_item.dart';
import 'package:booking/features/home/presenataion/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), FeaturedBooksListView()]);
  }
}
