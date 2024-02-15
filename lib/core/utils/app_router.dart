import 'package:bookly/features/home/presentaion/view/book_details_view.dart';
import 'package:bookly/features/home/presentaion/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentaion/view/splash_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homePage';
  static const KDetailsView = '/detailsBody';
   static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder:  (context, state) => const SplashView(),
        ),
        GoRoute(
          path: KHomeView,
          builder:  (context, state) => const HomeView(),
        ),
        GoRoute(
          path: KDetailsView,
          builder:  (context, state) => const BookDetailsView(),
        ),
      ]
  );

}
