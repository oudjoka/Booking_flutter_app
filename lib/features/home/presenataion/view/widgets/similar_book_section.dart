import 'package:booking/core/utils/styles.dart';
import 'package:booking/features/home/presenataion/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('You can also like', style: Styles.textStyle18),
          ),
          SizedBox(height: 16),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
