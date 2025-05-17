import 'package:booking/features/home/data/models/book_model/book_model.dart';
import 'package:booking/features/home/presenataion/view/widgets/book_details_section.dart';
import 'package:booking/features/home/presenataion/view/widgets/custom_book_details_app_bar.dart';
import 'package:booking/features/home/presenataion/view/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              BookDetailsSection(bookModel: bookModel),

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
