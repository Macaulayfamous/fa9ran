import 'dart:async';

import 'package:fa9ran/ui/pages/second_splash_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 15), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondSplashPage(),
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/coupon (1) 1.png',
      ),
      splashIconSize: 177.5,
      nextScreen: SecondSplashPage(),
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: const Color(0xffE41937),
    );
  }
}
