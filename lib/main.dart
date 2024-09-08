import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

// Local components
import 'package:mobile/screens/splash_screen.dart';
import 'app.dart';

void main() {
  runApp(const AppView());
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  // Set the main app
  static const mainApp = PujoAtlasApp(title: "Homepage");
  static const splashScreen = SplashScreen();
  bool switchToMainScreen = false;

  // init state for default values
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    initializeApp();
  }

  // Load data from local storate
  Future initializeApp() async {
    // Sleep here for 5 secs
    await Future.delayed(const Duration(seconds: 5));

    // Hide the splash screen
    showMainScreen();
  }

  void showMainScreen() {
    setState(() {
      switchToMainScreen = true;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return !switchToMainScreen
        ? MaterialApp(
            title: 'Splash Screen',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
              useMaterial3: true,
            ),
            home: splashScreen,
            debugShowCheckedModeBanner: false,
          )
        : MaterialApp(
            title: 'Pujo Atlas',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: mainApp,
            debugShowCheckedModeBanner: false,
          );
  }
}
