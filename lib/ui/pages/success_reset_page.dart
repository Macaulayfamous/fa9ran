import 'package:fa9ran/ui/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SuccessResetPage extends StatelessWidget {
  const SuccessResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AnimationConfiguration.staggeredList(
        position: 0,
        duration: const Duration(milliseconds: 375),
        child: SlideAnimation(
          verticalOffset: 50.0,
          child: FadeInAnimation(
            child: Container(
              margin: const EdgeInsets.only(top: 165),
              child: Center(
                child: Image.asset(
                  'assets/coupon (2) 2.png',
                  height: 95,
                  width: 235,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget title() {
      return AnimationConfiguration.staggeredList(
        position: 1,
        duration: const Duration(milliseconds: 375),
        child: SlideAnimation(
          verticalOffset: 50.0,
          child: FadeInAnimation(
            child: Container(
              margin: const EdgeInsets.only(top: 34),
              child: const Center(
                child: Text(
                  'Password changed',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget content() {
      return AnimationConfiguration.staggeredList(
        position: 2,
        duration: const Duration(milliseconds: 375),
        child: SlideAnimation(
          verticalOffset: 50.0,
          child: FadeInAnimation(
            child: Container(
              margin: const EdgeInsets.only(top: 26),
              child: const Center(
                child: Text(
                  'Your password has been changed \nsuccessfully.',
                  style: TextStyle(
                    color: Color(0xff808080),
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget tacButton() {
      return AnimationConfiguration.staggeredList(
        position: 3,
        duration: const Duration(milliseconds: 375),
        child: SlideAnimation(
          verticalOffset: 50.0,
          child: FadeInAnimation(
            child: Container(
              margin: const EdgeInsets.only(top: 26),
              height: 56,
              width: 257.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SignInPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffE41937),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  ' Back to login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          title(),
          content(),
          tacButton(),
        ],
      ),
    );
  }
}
