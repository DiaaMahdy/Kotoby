import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kotoby/core/utils/service_locator.dart';
import 'package:kotoby/features/home/data/models/book_model/book_model.dart';
import 'package:kotoby/features/home/data/repos/home_repo_impl.dart';
import 'package:kotoby/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:kotoby/features/home/presentation/views/book_details_view.dart';
import 'package:kotoby/features/home/presentation/views/home_view.dart';
import 'package:kotoby/features/search/presentation/views/search_view.dart';
import 'package:kotoby/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static final router = GoRouter(routes: [
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
        create: (context) => SimilarBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: '/searchView',
      builder: (context, index) => const SearchView(),
    ),
  ]);
}
