import 'package:booking/constant.dart';
import 'package:booking/core/utils/app_router.dart';
import 'package:booking/core/utils/service_locator.dart';
import 'package:booking/features/home/data/repos/home_repo_impl.dart';
import 'package:booking/features/home/presenataion/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booking/features/home/presenataion/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const Booking());
}

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //without using getit
        // BlocProvider(create:(context)=>FeaturedBooksCubit(
        //    HomeRepoImpl(ApiService(Dio())),
        //   ) ),
        //by using getit
        BlocProvider(
          create:
              (context) =>
                  FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                    ..fetchFeaturedBooks(),
        ),
        //..fetchFeaturedBooks() means when you create this cubit execute this method
        BlocProvider(
          create:
              (context) =>
                  NewestBooksCubit(getIt.get<HomeRepoImpl>())
                    ..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData(brightness: Brightness.dark).copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
