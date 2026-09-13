import 'package:bookly_app/Features/Splash/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/home_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/search/presention/views/searh_views.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kBookDetailsView, builder: (context, state) => const BookDetails()),
      GoRoute(path: kSearchView, builder: (context, state) => const SearchView()),
        

     
    ],
  );
}
