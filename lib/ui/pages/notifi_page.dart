import 'package:flutter/material.dart';

class NotifiPage extends StatelessWidget {
  const NotifiPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 38,
          right: 15,
          left: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/filters.png',
              width: 26.5,
              height: 26.5,
              fit: BoxFit.cover,
              color: Colors.red,
            ),
            const Text(
              'Notifications',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'assets/notification.png',
              color: Colors.red,
              width: 26,
              height: 26,
              fit: BoxFit.cover,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 45, right: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Today',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 7.5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/google-docs.png',
                      width: 39,
                      height: 39,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 12.5,
                        left: 23,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'File Updated',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Your File has been succeesslly \nUpdated.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/remove10.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 7.5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/circular.png',
                      width: 39,
                      height: 39,
                      fit: BoxFit.cover,
                      color: Colors.red,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 12.5,
                        left: 23,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password Reset',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Your Password has been succeesslly \nRestored.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/remove10.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Yesterday',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 7.5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/order.png',
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 12.5,
                        left: 23,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order Completed',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Your order has been succeesslly \nDone.',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/remove10.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFF0F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}
