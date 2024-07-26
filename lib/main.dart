import 'package:booklyapp/Features/home/data/repos/home_repo_implementation.dart';
import 'package:booklyapp/Features/home/presentaion/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/Features/home/presentaion/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/app_routers.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setService();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
