import 'package:bookly_app/Features/Home/Presentation/views/BookDetailsView.dart';
import 'package:bookly_app/Features/Home/Presentation/views/home_view.dart';
import 'package:bookly_app/Features/Search/presentation/views/SearchView.dart';
import 'package:bookly_app/Features/Splash/Presentation/views/Splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
 static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

static final router=GoRouter(routes: [
  GoRoute(path: '/',
  builder: (context,State)=> const SplachView()),
  GoRoute(path: kHomeView,
  builder: (context,State)=> const HomeView()),
  GoRoute(path: kBookDetailsView,
  builder: (context,State)=> const Bookdetailsview()),
   GoRoute(path: kSearchView,
  builder: (context,State)=> const Searchview()),
]);
}