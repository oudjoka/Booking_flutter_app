import 'package:booking/core/utils/service_locator.dart';
import 'package:booking/features/home/data/models/book_model/book_model.dart';
import 'package:booking/features/home/data/repos/home_repo_impl.dart';
import 'package:booking/features/home/presenataion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booking/features/home/presenataion/view/book_details_view.dart';
import 'package:booking/features/home/presenataion/view/home_view.dart';
import 'package:booking/features/search/presentation/view/book_search_view.dart';
import 'package:booking/features/splash/presentaion/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kBookSearchView = '/bookSearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder:
            (context, state) => BlocProvider(
              create:
                  (BuildContext context) =>
                      SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(bookModel: state.extra as BookModel),
            ),
      ),
      GoRoute(
        path: '/bookSearchView',
        builder: (context, state) => BookSearchView(),
      ),
    ],
  );
}
