import 'package:fa9ran/models/sorts_model.dart';
import 'package:fa9ran/ui/pages/cart_page.dart';
import 'package:fa9ran/ui/pages/categories_page.dart';
import 'package:fa9ran/ui/pages/fashion_page.dart';
import 'package:fa9ran/ui/pages/profile_page.dart';
import 'package:fa9ran/ui/pages/search_page.dart';
import 'package:fa9ran/ui/pages/sorting_page.dart';
import 'package:fa9ran/ui/widgets/sort_items.dart';
import 'package:fa9ran/ui/widgets/sort_products.dart';
import 'package:flutter/material.dart';

class ProductSortPage extends StatelessWidget {
  const ProductSortPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 36, right: 7.5, left: 10),
        child: Row(
          children: [
            Image.asset(
              'assets/sort.png',
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 22.5,
            ),
            Image.asset(
              'assets/coupon (1) 1.png',
              height: 40,
              width: 40,
              fit: BoxFit.cover,
              color: Colors.red,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 12.5),
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 37.5),
                    hintText: 'Search here ...',
                    hintStyle: const TextStyle(
                      color: Color(0xffC8C8CB),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: const BorderSide(
                        color: Color(0xffE41937),
                      ),
                    ),
                    prefixIcon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SearchPage(),
                            ));
                      },
                      child: const Icon(
                        Icons.search,
                        size: 20,
                        color: Color(0xffC8C8CB),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 10,
              ),
              SortItems(
                Sorts(
                  id: 1,
                  name: 'Price',
                  imageUrl: 'assets/price-tag.png',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SortItems(
                Sorts(
                  id: 2,
                  name: 'Brand',
                  imageUrl: 'assets/price-tag.png',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SortItems(
                Sorts(
                  id: 3,
                  name: 'Case',
                  imageUrl: 'assets/tap.png',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SortItems(
                Sorts(
                  id: 4,
                  name: 'Rating',
                  imageUrl: 'assets/star.png',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SortItems(
                Sorts(
                  id: 5,
                  name: 'Brand',
                  imageUrl: 'assets/price-tag.png',
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SortItems(
                Sorts(
                  id: 6,
                  name: 'Price',
                  imageUrl: 'assets/money-banking.png',
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        height: 500,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(1.25),
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 6.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SortProducts(),
                  SortProducts(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SortProducts(),
                  SortProducts(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SortProducts(),
                  SortProducts(),
                ],
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                header(),
                title(),
                content(),
              ],
            ),
          ),
          Positioned(
              bottom: 13.25,
              right: 95,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 34.25,
                      width: 35.5,
                      margin: const EdgeInsets.only(
                          top: 2.5, left: 137.5, bottom: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red,
                          width: 1.1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.35),
                            spreadRadius: 1.2,
                            blurRadius: 1.2,
                            offset: const Offset(0, 1.2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/share.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 9.25,
                    ),
                    Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                openDialog(context);
                              },
                              child: Image.asset(
                                'assets/filter1.png',
                                height: 24,
                                width: 24,
                                fit: BoxFit.cover,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  openDialog(context);
                                },
                                child: const Text(
                                  'Filter',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8, right: 8),
                              height: 17.5,
                              width: 1.5,
                              color: const Color(0xffF5F5F5),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SortingPage(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/sorting.png',
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 1.75,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SortingPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Sorting',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
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
          currentIndex: 0,
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
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/User1.png',
                  height: 24,
                  width: 24,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Future openDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => Center(
        child: Container(
          width: 900,
          alignment: Alignment.bottomCenter,
          child: AlertDialog(
            content: Container(
              height: 245,
              width: 500,
              color: Colors.white,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1, left: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/close.png',
                                height: 22,
                                width: 22,
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                'assets/sorting.png',
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/checkmark (1).png',
                                        color: Colors.white,
                                        height: 16.75,
                                        width: 16.75,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'Popularity',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.grey)),
                                  ),
                                  const Text(
                                    'Price : High to Low',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.25,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.grey)),
                                  ),
                                  const Text(
                                    'Price : Low to Heigh',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.25,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.grey)),
                                  ),
                                  const Text(
                                    'New Arrivals',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.25,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.grey)),
                                  ),
                                  const Text(
                                    'Best Rated',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.25,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
