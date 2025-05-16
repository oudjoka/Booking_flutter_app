import 'package:booking/core/widgets/custom_error_widgets.dart';
import 'package:booking/core/widgets/custom_loading_indicator.dart';
import 'package:booking/features/home/presenataion/manager/newest_books_cubit/newest_book_state.dart';
import 'package:booking/features/home/presenataion/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booking/features/home/presenataion/view/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestbooksListView extends StatelessWidget {
  const NewestbooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBookState>(
      builder: (BuildContext context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: NewestBooksListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidgets(errorMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
