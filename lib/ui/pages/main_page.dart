import 'package:fa9ran/ui/pages/cart_page.dart';
import 'package:fa9ran/ui/pages/categories_page.dart';
import 'package:fa9ran/ui/pages/fashion_page.dart';
import 'package:fa9ran/ui/pages/home_screen.dart';
import 'package:fa9ran/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoriesPage(),
    const FashionPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(
            color: Color(0xff484C52),
            fontSize: 11.5,
            fontWeight: FontWeight.w400,
          ),
          selectedLabelStyle: const TextStyle(
            color: Color(0xffE41937),
            fontSize: 13.5,
            fontWeight: FontWeight.w700,
          ),
          selectedItemColor: const Color(0xffE41937),
          unselectedItemColor: const Color(0xff484C52),
          type: BottomNavigationBarType.fixed,
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/home-2.png',
                width: 67.5,
                height: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Palette1.png',
                height: 24,
                width: 24,
              ),
              label: 'categories',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/brand 1.png',
                height: 24,
                width: 60,
              ),
              label: 'Fashion',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Cart1.png',
                height: 24,
                width: 24,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/User1.png',
                height: 24,
                width: 24,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: _pages[_pageIndex],
    );
  }
}
