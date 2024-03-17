import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60, left: 27.75),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/arrow_left.png',
                      height: 24,
                      width: 24,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
