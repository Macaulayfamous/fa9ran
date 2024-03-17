import 'package:fa9ran/models/product_model.dart';
import 'package:fa9ran/ui/pages/cart_page.dart';
import 'package:fa9ran/ui/pages/categories_page.dart';
import 'package:fa9ran/ui/pages/fashion_page.dart';
import 'package:fa9ran/ui/pages/favourite_page.dart';
import 'package:fa9ran/ui/pages/notifi_page.dart';
import 'package:fa9ran/ui/pages/profile_page.dart';
import 'package:fa9ran/ui/pages/search_page.dart';
import 'package:fa9ran/ui/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    AppBar header() {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 16, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 8,
                      ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Row(
                      children: [
                        SizedBox(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FavouritePage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/btn_wishlist.png',
                              width: 37.5,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const NotifiPage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/notification.png',
                              height: 26,
                              width: 26,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                height: 36.5,
                width: 297.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffF5F5F5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/location-pin.png',
                      width: 15.75,
                      height: 15.75,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'My Position :Tanta City, Gharbia, Egypt',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'assets/Arrow.png',
                      width: 18,
                      height: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 115,
      );
    }

    Widget categoriesTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 11, left: 21, right: 21),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Category',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' See All',
              style: TextStyle(
                color: Color(0xff80848A),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(top: 6),
        child: Padding(
          padding: const EdgeInsets.only(right: 21, left: 21),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CategoriesTile(Categories(
                    //   id: 1,
                    //   imageUrl: 'assets/photo7.png',
                    //   title: 'Video Games',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 2,
                    //   imageUrl: 'assets/photo6.png',
                    //   title: 'Chaies',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 3,
                    //   imageUrl: 'assets/photo3.png',
                    //   title: 'Tv',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 4,
                    //   imageUrl: 'assets/photo4.png',
                    //   title: 'Laptops',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 5,
                    //   imageUrl: 'assets/photo5.png',
                    //   title: 'Shoes',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 6,
                    //   imageUrl: 'assets/photo2.png',
                    //   title: 'Mobiles',
                    // )),
                    // const SizedBox(width: 5),
                    // CategoriesTile(Categories(
                    //   id: 7,
                    //   imageUrl: 'assets/photo.png',
                    //   title: 'Food',
                    // )),
                    const SizedBox(width: 7),
                    // CategoriesTile(
                    //   Categories(
                    //     id: 8,
                    //     imageUrl: 'assets/photo8.png',
                    //     title: 'Books',
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // CategoriesTile(Categories(
                    //   id: 1,
                    //   imageUrl: 'assets/photo2.png',
                    //   title: 'Mobiles',
                    // )),
                    // const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 2,
                    //   imageUrl: 'assets/photo7.png',
                    //   title: 'Video Games',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 3,
                    //   imageUrl: 'assets/photo3.png',
                    //   title: 'Tv',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 4,
                    //   imageUrl: 'assets/photo4.png',
                    //   title: 'Laptops',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 5,
                    //   imageUrl: 'assets/photo5.png',
                    //   title: 'Mobiles',
                    // )),
                    const SizedBox(width: 22),
                    // CategoriesTile(Categories(
                    //   id: 6,
                    //   imageUrl: 'assets/photo6.png',
                    //   title: 'Mobiles',
                    // )),
                    const SizedBox(width: 5),
                    // CategoriesTile(Categories(
                    //   id: 7,
                    //   imageUrl: 'assets/photo.png',
                    //   title: 'Mobiles',
                    // )),
                    const SizedBox(width: 7),
                    // CategoriesTile(
                    //   Categories(
                    //     id: 8,
                    //     imageUrl: 'assets/photo8.png',
                    //     title: 'Mobiles',
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget discounts() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Container(
          height: 133,
          width: 352,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 13.5),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 33.5,
                    ),
                    Text(
                      '40%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'discount',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 29.7,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'NEW COLLECTION WITH',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 75,
                ),
                Image.asset(
                  'assets/airpods.png',
                  height: 135.5,
                  width: 144.6,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget salesTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 32, left: 21, right: 21),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Sales',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' See All',
              style: TextStyle(
                color: Color(0xff80848A),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    Widget products() {
      return Container(
        margin: const EdgeInsets.only(top: 10, left: 10, right: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductT(
                  Product(
                    id: 1,
                    imageUrl: 'assets/addddd.png',
                    name: 'Iphone 15 pro max',
                    title: 'Mobiles',
                    price: 1250,
                    dicount: 1400,
                  ),
                ),
                ProductT(
                  Product(
                    id: 2,
                    imageUrl: 'assets/Rectangle 50.png',
                    name: 'Iphone 15 pro max',
                    title: 'Mobiles',
                    price: 1250,
                    dicount: 1400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductT(
                  Product(
                    id: 3,
                    imageUrl: 'assets/Rectangle 50.png',
                    name: 'Iphone 15 pro max',
                    title: 'Mobiles',
                    price: 1250,
                    dicount: 1400,
                  ),
                ),
                ProductT(
                  Product(
                    id: 1,
                    imageUrl: 'assets/addddd.png',
                    name: 'Iphone 15 pro max',
                    title: 'Mobiles',
                    price: 1250,
                    dicount: 1400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductT(
                  Product(
                    id: 1,
                    imageUrl: 'assets/Rectangle 50.png',
                    name: 'Iphone 15 pro max',
                    title: 'Mobiles',
                    price: 1250,
                    dicount: 1400,
                  ),
                ),
                ProductT(
                  Product(
                    id: 1,
                    imageUrl: 'assets/addddd.png',
                    name: 'Iphone 15 pro max',
                    title: 'Mobiles',
                    price: 1250,
                    dicount: 1400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 232,
                width: 352,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/banner.png',
                    ),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Sneaker Collection',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 5, bottom: 10, left: 12),
                        height: 39,
                        width: 139,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Center(
                          child: Text(
                            'See ALL',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductT(
                  Product(
                    id: 1,
                    imageUrl: 'assets/addddd.png',
                    name: 'Iphone 15 pro max',
                    title: 'Mobiles',
                    price: 1250,
                    dicount: 1400,
                  ),
                ),
                ProductT(
                  Product(
                    id: 1,
                    imageUrl: 'assets/Rectangle 50.png',
                    name: 'Iphone 15 pro max',
                    title: 'Mobiles',
                    price: 1250,
                    dicount: 1400,
                  ),
                ),
              ],
            ),
          ],
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
            categoriesTitle(),
            categories(),
            // discounts(),
            // salesTitle(),
            // products(),
            const SizedBox(
              height: 25,
            ),
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
}
