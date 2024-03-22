import 'package:fa9ran/provider/user_provider.dart';
import 'package:fa9ran/ui/pages/Notifications_page.dart';
import 'package:fa9ran/ui/pages/cart_page.dart';
import 'package:fa9ran/ui/pages/categories_page.dart';
import 'package:fa9ran/ui/pages/edit_language_page.dart';
import 'package:fa9ran/ui/pages/edit_profile_page.dart';
import 'package:fa9ran/ui/pages/fashion_page.dart';
import 'package:fa9ran/ui/pages/favourite_page.dart';
import 'package:fa9ran/ui/pages/home_page.dart';
import 'package:fa9ran/ui/pages/orders_page.dart';
import 'package:fa9ran/ui/pages/qr_page.dart';
import 'package:fa9ran/ui/pages/security_page.dart';
import 'package:fa9ran/ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Image.asset(
        'assets/coupon (2) 2.png',
        height: 157.5,
        width: 157.5,
      );
    }

    Widget editProfile() {
      return Container(
        margin: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ref
                        .read(currentUserProvider)
                        .currentUserData['firstName']
                        .toUpperCase(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    ref.read(currentUserProvider).currentUserData['email'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 34),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfilePage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    const Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Color(0xffE41937),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Image.asset(
                        'assets/edit.png',
                        height: 16,
                        width: 16,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget interest() {
      return Container(
        margin: const EdgeInsets.only(
          right: 25,
          left: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF0F4),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/coupon (1) 1.png',
                      height: 45,
                      width: 45,
                      fit: BoxFit.cover,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.5,
                ),
                const Text(
                  'Join Fa9ran',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF0F4),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/atm-card.png',
                      height: 49,
                      width: 49,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.5,
                ),
                const Text(
                  'Fa9ran Credits',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF0F4),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/product-return.png',
                      height: 44,
                      width: 44,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.5,
                ),
                const Text(
                  'Returns',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrdersPage(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFF0F4),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/box.png',
                        height: 49,
                        width: 49,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.5,
                  ),
                  const Text(
                    'Orders',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget details() {
      return Container(
        margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              height: 125,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 1.5,
                    blurRadius: 1.5,
                    offset: const Offset(0, 1.5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 18, left: 15, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/protection.png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Security',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SecurityPage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/right.png',
                              height: 13,
                              width: 13,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationsPage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/notification.png',
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationsPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Notifications',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/right.png',
                            height: 13,
                            width: 13,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EditLanguagePage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/translate-2.png',
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EditLanguagePage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Language',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/right.png',
                            height: 13,
                            width: 13,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              height: 125,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 1.5,
                    blurRadius: 1.5,
                    offset: const Offset(0, 1.5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/earth.png',
                          height: 24,
                          width: 24,
                          fit: BoxFit.cover,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Country',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/egypt.png',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/right.png',
                          height: 13,
                          width: 13,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const QrPage(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/scanner.png',
                            height: 22,
                            width: 22,
                            fit: BoxFit.cover,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          'Qr Code',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/right.png',
                          height: 13,
                          width: 13,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/address.png',
                          height: 24,
                          width: 24,
                          fit: BoxFit.cover,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Addresses',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/right.png',
                          height: 13,
                          width: 13,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 125,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 1.5,
                    blurRadius: 1.5,
                    offset: const Offset(0, 1.5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EditProfilePage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/credit-card.png',
                              height: 22,
                              width: 22,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Payment',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/right.png',
                            height: 13,
                            width: 13,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/customer-service (1).png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.cover,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Help & Support',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/right.png',
                            height: 13,
                            width: 13,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/heart.png',
                            height: 23.5,
                            width: 23.5,
                            fit: BoxFit.cover,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'My Favourite',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FavouritePage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/right.png',
                              height: 13,
                              width: 13,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signOut() {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Out',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 7.5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/logout (1).png',
                width: 21,
                height: 21,
                fit: BoxFit.cover,
                color: Colors.red,
              ),
            )
          ],
        ),
      );
    }

    Widget contact() {
      return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 50),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/linkedin.png',
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 23,
              ),
              Image.asset(
                'assets/facebook.png',
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 25,
              ),
              Image.asset(
                'assets/instagram.png',
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 23,
              ),
              Image.asset(
                'assets/twitter.png',
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 23,
              ),
              Image.asset(
                'assets/gmail.png',
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            editProfile(),
            interest(),
            details(),
            signOut(),
            contact(),
          ],
        ),
      ),
    );
  }
}
