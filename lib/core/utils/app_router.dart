import 'package:bookly/features/home/presentation/view/book_details_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:bookly/features/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homePage';
  static const KDetailsView = '/detailsBody';
  static const KSearch = '/search';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: KSearch,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: KHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: KDetailsView,
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
