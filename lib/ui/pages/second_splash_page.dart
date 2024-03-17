import 'dart:async';

import 'package:fa9ran/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SecondSplashPage extends StatefulWidget {
  @override
  State<SecondSplashPage> createState() => _SecondSplashPageState();
}

class _SecondSplashPageState extends State<SecondSplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStartedPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/coupon (2) 2.png'),
      splashIconSize: 90,
      nextScreen: Container(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
    );
  }
}
