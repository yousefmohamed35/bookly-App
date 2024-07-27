import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo_implementation.dart';
import 'package:booklyapp/Features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/home/presentaion/views/book_details_view.dart';
import 'package:booklyapp/Features/home/presentaion/views/home_view.dart';
import 'package:booklyapp/Features/search/presentaion/views/search_view.dart';
import 'package:booklyapp/Features/splash_view/presentation/views/splash_view.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
          child: const BookDetailsView(),
        ),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
