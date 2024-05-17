import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotoby/constants.dart';
import 'package:kotoby/core/utils/app_routes.dart';
import 'package:kotoby/features/home/data/repos/home_repo_impl.dart';
import 'package:kotoby/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:kotoby/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

import 'core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const Kotoby());
}

class Kotoby extends StatelessWidget {
  const Kotoby({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
