import 'package:flutter/material.dart';

import 'app.dart';
import 'splash.dart';

void main() {
  runApp(const AppView());
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0XFFE6E0E9),
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(
              0xffCAC4D0,
            ),
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(
              0xff381E72,
            ),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Color(0xFFD9D9D9),
        ),
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/': (context) => const PujoAtlasApp(title: "Flutter Demo Home Page")
      },
      // home: const PujoAtlasApp(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
