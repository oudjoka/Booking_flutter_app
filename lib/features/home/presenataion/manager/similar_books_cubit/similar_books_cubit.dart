import 'package:booking/features/home/data/repos/home_repo.dart';
import 'package:booking/features/home/presenataion/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBooksFailure(failure.errmessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books));
      },
    );
  }
}
