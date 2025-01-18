import 'package:bookly_app/Features/Home/presentation/Views/BookDetailsView.dart';
import 'package:bookly_app/Features/Home/presentation/Views/HomeView.dart';
import 'package:bookly_app/Features/Search/presentation/Views/SearchView.dart';
import 'package:bookly_app/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const KHomeView = '/HomeView';
  static const KBookDetailsView = '/BookDetailsView';
  static const KSearchView = '/SearchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Splashview();
      },
    ),
    GoRoute(
      path: KSearchView,
      builder: (context, state) {
        return const Searchview();
      },
    ),
    GoRoute(
      path: KHomeView,
      builder: (context, state) {
        return const Homeview();
      },
    ),
    GoRoute(
      path: KBookDetailsView,
      builder: (context, state) {
        return const Bookdetailsview();
      },
    )
  ]);
}
