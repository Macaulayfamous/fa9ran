import 'package:flutter/material.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 190),
        child: Center(
          child: Image.asset(
            'assets/qr-code.png',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget scanButton() {
      return Container(
        margin: const EdgeInsets.only(top: 110),
        child: SizedBox(
          height: 47.5,
          width: 175,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                'Scan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          scanButton(),
        ],
      ),
    );
  }
}
