import 'package:booking/features/home/presenataion/view/book_details_view.dart';
import 'package:booking/features/home/presenataion/view/home_view.dart';
import 'package:booking/features/search/presentation/view/book_search_view.dart';
import 'package:booking/features/splash/presentaion/view/splash_view.dart';
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
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: '/bookSearchView',
        builder: (context, state) => BookSearchView(),
      ),
    ],
  );
}
