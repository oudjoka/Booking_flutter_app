import 'package:booking/core/utils/styles.dart';
import 'package:booking/core/widgets/custom_error_widgets.dart';
import 'package:booking/core/widgets/custom_loading_indicator.dart';
import 'package:booking/features/home/presenataion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booking/features/home/presenataion/manager/similar_books_cubit/similar_books_state.dart';
import 'package:booking/features/home/presenataion/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (BuildContext context, state) {
        if (state is SimilarBooksSuccess) {
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
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidgets(errorMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
