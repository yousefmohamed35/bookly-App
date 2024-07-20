import 'package:booklyapp/Features/home/presentaion/views/book_details_view.dart';
import 'package:booklyapp/Features/home/presentaion/views/home_view.dart';
import 'package:booklyapp/Features/splash_view/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters{
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
      builder: (context, state) => const BookDetailsView(),
    ),
  ],
);
}