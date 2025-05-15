import 'package:booking/features/home/data/repos/home_repo.dart';
import 'package:booking/features/home/presenataion/manager/newest_books_cubit/newest_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBookState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errmessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
