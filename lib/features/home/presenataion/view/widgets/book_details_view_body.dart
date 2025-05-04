import 'package:booking/features/home/presenataion/view/widgets/book_details_section.dart';
import 'package:booking/features/home/presenataion/view/widgets/custom_book_details_app_bar.dart';
import 'package:booking/features/home/presenataion/view/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              BookDetailsSection(),

              Expanded(child: SizedBox(height: 50)),
              SimilarBookSection(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
