import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/Splash/presentation/views/splash_view.dart';

//core folder consists of reply component
//Features folder details of app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
      //dark()=dark mode
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 29, 70, 100),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    
    );
    // home: const MyHomePage(title: 'Flutter Demo Home Page'),
  }
}

  