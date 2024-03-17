import 'package:fa9ran/models/favourite_model.dart';
import 'package:fa9ran/ui/pages/cart_page.dart';
import 'package:fa9ran/ui/pages/categories_page.dart';
import 'package:fa9ran/ui/pages/fashion_page.dart';
import 'package:fa9ran/ui/pages/home_page.dart';
import 'package:fa9ran/ui/widgets/favourite_tile.dart';
import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 35, left: 11, right: 11),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                'CANCEL',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            Image.asset(
              'assets/coupon (2) 2.png',
              width: 92.5,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 15, left: 11, right: 11),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xffF5F5F5),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/share1.png',
                      width: 26,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xffF5F5F5),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/edit10.png',
                      width: 28,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  '5 Items',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Container(
              height: 1.75,
              width: 465,
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
          ],
        ),
      );
    }

    Widget favourite() {
      return Padding(
        padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FavouriteTile(Favourite(
                  id: 1,
                  imageUrl: 'assets/SAMSUNg.jpg',
                  name: 'Samsung S23 ultra',
                  title: 'Samsung',
                  price: 850,
                  discount: 1250,
                  percent: 30,
                )),
                FavouriteTile(Favourite(
                  id: 2,
                  imageUrl: 'assets/SAMSUNg.jpg',
                  name: 'Air fryer',
                  title: 'Philips',
                  price: 250,
                  discount: 400,
                  percent: 40,
                )),
              ],
            ),
            Row(
              children: [
                FavouriteTile(Favourite(
                  id: 3,
                  imageUrl: 'assets/ps4.jpg',
                  name: 'PS4 Controller',
                  title: 'Sony',
                  price: 35,
                  discount: 75,
                  percent: 15,
                )),
                FavouriteTile(
                  Favourite(
                    id: 4,
                    imageUrl: 'assets/SAMSUNg.jpg',
                    name: 'Samsung 8k qled',
                    title: 'Samsung',
                    price: 2750,
                    discount: 4000,
                    percent: 17,
                  ),
                ),
              ],
            ),
            FavouriteTile(
              Favourite(
                id: 4,
                imageUrl: 'assets/Lg.jpg',
                name: ' Lg Family Hub',
                title: 'Lg',
                price: 2750,
                discount: 4000,
                percent: 17,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            content(),
            favourite(),
          ],
        ),
      ),
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
          currentIndex: 4,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/home1.png',
                  width: 67.5,
                  height: 24,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoriesPage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/Palette1.png',
                  height: 24,
                  width: 24,
                ),
              ),
              label: 'categories',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FashionPage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/brand 1.png',
                  height: 24,
                  width: 60,
                ),
              ),
              label: 'Fashion',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartPage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/Cart1.png',
                  height: 24,
                  width: 24,
                ),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/User1.png',
                height: 24,
                width: 24,
                color: const Color(0xffE41937),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
