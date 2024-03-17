import 'package:fa9ran/ui/pages/order_summary_page.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 85,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 7, top: 13),
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
                width: 150,
              ),
              const Text(
                'Tracking Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.75,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 10, left: 7.5, right: 7.5),
        height: 85,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(top: 17.5, left: 18, right: 42.5),
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Completed',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Thursday, 14th Dec, 12:30 PM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 22.5),
                child: Image.asset(
                  'assets/approved.png',
                  height: 45,
                  width: 45,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 15, left: 7.5, right: 7.5),
        height: 160.5,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Delivery address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 1.25,
                  ),
                  Text(
                    '(Home)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Mostafa Gamal',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 2.5,
                  ),
                  Text(
                    'Recipient',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11.25,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Sheikh Zayed,Cairo, Egypt',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.35,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    '(+20) 1064195982',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 2.5,
                  ),
                  Text(
                    'Verified',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    const Text(
                      'Payment Method',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 7.5,
                    ),
                    Image.asset(
                      'assets/amex.png',
                      height: 36,
                      width: 36,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget summarize() {
      return Container(
        margin: const EdgeInsets.only(top: 15, left: 7.5, right: 7.5),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 12.5, left: 2.5),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderSummary(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View order/invoice summary',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 2.5,
                      ),
                      Text(
                        'Find invoice, shipping details here',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget item() {
      return Container(
        margin: const EdgeInsets.only(top: 27.5),
        height: 176,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xffFFF0F4).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/Gta.jpg',
            ),
            const SizedBox(
              width: 2.5,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'RockStar',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Gta6 Vice City 2024',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 12.5,
                  ),
                  const Row(
                    children: [
                      Text(
                        '250 USD',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 13.85,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 7.5,
                      ),
                      Text(
                        '\$425',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        "This item can't be exchanged or \n returned",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2.5,
                  ),
                  Image.asset(
                    'assets/return (1).png',
                    height: 20,
                    width: 20,
                    color: Colors.red,
                  )
                ])
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFF0F4),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            title(),
            content(),
            summarize(),
            item(),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
