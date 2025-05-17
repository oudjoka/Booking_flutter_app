import 'package:booking/core/utils/styles.dart';
import 'package:booking/features/home/data/models/book_model/book_model.dart';
import 'package:booking/features/home/presenataion/view/widgets/book_rating.dart';
import 'package:booking/features/home/presenataion/view/widgets/books_action.dart';
import 'package:booking/features/home/presenataion/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .23),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        SizedBox(height: 43),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? 'No author montionned',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 18),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 37),
        BooksAction(bookModel: bookModel),
      ],
    );
  }
}
