import 'package:bookly_app/Features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/Features/search/presention/view%20model/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/search/presention/view%20model/newset/newset_books_cubit.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

//core folder consists of reply component
//Features folder details of app
void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRepoImplement>()),
        ),

        BlocProvider(
          create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImplement>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        //dark()=dark mode
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 29, 70, 100),
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
    // home: const MyHomePage(title: 'Flutter Demo Home Page'),
  }
}
