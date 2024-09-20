import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _firstAnimation;
  late Animation<double> _secondLogoAnimation;
  late Animation<double> _thirdLogoAnimation;
  late Animation<double> _fullLogoAnimation;
  late Animation<double> _textAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _firstAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.25)),
    );
    _secondLogoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.25, 0.5)),
    );
    _thirdLogoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.5, 0.75)),
    );
    _fullLogoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.75, 1.0)),
    );
    _textAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.75, 1.0)),
    );

    _controller.forward().then((_) {
      Future.delayed(const Duration(milliseconds: 500), () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => const PujoAtlasApp(title: "Pujo Atlas main screen",), // Replace with your main screen widget
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: const Duration(milliseconds: 500),
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Spacer(),
            Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      FadeTransition(
                        opacity: _firstAnimation,
                        child: SvgPicture.asset(
                          'assets/images/logo_1.svg',
                          height: 100,
                          width: 100,
                          // color: Colors.yellow,
                        ),
                      ),
                      FadeTransition(
                        opacity: _secondLogoAnimation,
                        child: SvgPicture.asset(
                          'assets/images/logo_2.svg',
                          height: 100,
                          width: 100,
                          // color: Colors.red,
                        ),
                      ),
                      FadeTransition(
                        opacity: _thirdLogoAnimation,
                        child: SvgPicture.asset(
                          'assets/images/logo_3.svg',
                          height: 100,
                          width: 100,
                          // color: Colors.red,
                        ),
                      ),
                      FadeTransition(
                        opacity: _fullLogoAnimation,
                        child: SvgPicture.asset(
                          'assets/images/logo.svg',
                          height: 100,
                          width: 100,
                          // color: Colors.red,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            // const SizedBox(height: 200),
            const Spacer(),
            Center(
              child: Column(
                children: [
                  FadeTransition(
                    opacity: _textAnimation,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'by',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '\n\n', // Add extra newline for padding
                            style: TextStyle(
                              height:
                                  1.5, // Adjust this value to increase/decrease padding
                            ),
                          ),
                          TextSpan(
                            text: 'Kolkata',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}