import 'package:flutter/material.dart';

class EditLanguagePage extends StatelessWidget {
  const EditLanguagePage({super.key});

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
                    'Language',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 35),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(right: 270),
            child: Text(
              'Suggested',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 18, left: 32.5),
                child: Text(
                  'Arabic',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                width: 285,
              ),
              Container(
                margin: const EdgeInsets.only(top: 18),
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(
                      0xffE41937,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 18, left: 32.5),
                child: Text(
                  'English (UK)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                width: 247,
              ),
              Container(
                margin: const EdgeInsets.only(top: 18),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffE41937),
                  border: Border.all(
                    color: const Color(0xffE41937),
                  ),
                ),
              )
            ],
          ),
        ]),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
