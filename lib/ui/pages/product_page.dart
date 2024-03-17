import 'package:carousel_slider/carousel_slider.dart';
import 'package:fa9ran/models/checked_model.dart';
import 'package:fa9ran/models/product_model.dart';
import 'package:fa9ran/ui/pages/cart_page.dart';
import 'package:fa9ran/ui/pages/categories_page.dart';
import 'package:fa9ran/ui/pages/fashion_page.dart';
import 'package:fa9ran/ui/pages/profile_page.dart';
import 'package:fa9ran/ui/widgets/checked_tile.dart';
import 'package:fa9ran/ui/widgets/products_item.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SizedBox(
        height: 350,
        width: double.infinity,
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const PhotoDetail(),
                //   ),
                // );
              },
              child: CarouselSlider(
                items: [
                  Image.asset('assets/MODEL1.jpg', fit: BoxFit.cover),
                  Image.asset('assets/model10.jpg', fit: BoxFit.cover),
                  Image.asset(
                    'assets/Model3.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset('assets/Modell.jpg', fit: BoxFit.cover),
                  Image.asset('assets/Model5.jpg', fit: BoxFit.cover),
                ],
                options: CarouselOptions(
                  height: 350,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: true,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 12.75,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      height: 4,
                      width: 20,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: _currentPage == i ? Colors.red : Colors.blueGrey,
                      ),
                    ),
                ],
              ),
            ),
            Positioned(
              top: 12.5,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 313,
                    left: 9.5,
                  ),
                  height: 27.5,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
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
                      'assets/share1.png',
                      width: 25,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 306, right: 9.5),
                  child: Image.asset(
                    'assets/btn_wishlist.png',
                    width: 32.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 8.50, left: 12, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13.75),
                border: Border.all(
                  color: const Color(0xffD0D0D0),
                  width: 1.25,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 3, right: 3),
                child: Row(
                  children: [
                    const Text(
                      '(164)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 20,
                      color: Colors.red,
                    ),
                    const Text(
                      '4.4',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ), //
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$250',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '%45 OFF',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 4), // Adjust the spacing
                    Text(
                      '\$300.00',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
        height: 68,
        width: 380,
        decoration: BoxDecoration(
          color: const Color(0xffFFF0F4),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Free shipping through Friday, January 1',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Order within 15 hours 40 minutes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(bottom: 7),
                child: Image.asset(
                  'assets/gift.png',
                  width: 43,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget discounts() {
      return Container(
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
        height: 125,
        width: 380,
        decoration: BoxDecoration(
          color: const Color(0xffFFF0F4),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/discounts.png',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Get it in monthly installments \nof \$50 with 0% interest.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      size: 22,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 1,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/discount.png',
                          width: 40,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Get ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.5,
                              fontWeight: FontWeight.w400,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '\$20',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ' cash back using your',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '\nFa9ran ',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ' credit card.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget warranty() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
            height: 125,
            width: 380,
            decoration: BoxDecoration(
              color: const Color(0xffFFF0F4),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/guarantee.png',
                        width: 40,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'One Year Warranty.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chevron_right,
                          size: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/unavailable.png',
                              width: 38,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'This product cannot be \nexchanged or returned.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.5,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                                size: 22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget colour() {
      return Container(
        margin: const EdgeInsets.only(top: 17.5, right: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Colour Name',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // PhotoTile(
                  //   Photo(
                  //     id: 1,
                  //     imageUrl: 'assets/MODEL1.jpg',
                  //   ),
                  // ),
                  const SizedBox(
                    width: 7.5,
                  ),
                  // PhotoTile(
                  //   Photo(
                  //     id: 2,
                  //     imageUrl: 'assets/model10.jpg',
                  //   ),
                  // ),
                  const SizedBox(
                    width: 7.5,
                  ),
                  // PhotoTile(
                  //   Photo(
                  //     id: 3,
                  //     imageUrl: 'assets/Model3.jpg',
                  //   ),
                  // ),
                  const SizedBox(
                    width: 7.5,
                  ),
                  // PhotoTile(
                    
                  //   Photo(
                      
                  //     id: 4,
                  //     imageUrl: 'assets/Modell.jpg',
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 7.5,
                  // ),
                  // PhotoTile(
                  //   Photo(
                  //     id: 5,
                  //     imageUrl: 'assets/Model5.jpg',
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget specs() {
      return Container(
        margin: const EdgeInsets.only(top: 15, right: 15, left: 15),
      );
    }

    Widget related() {
      return Container(
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Related Products',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.75,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ProductItem(
                    Product(
                      id: 1,
                      imageUrl: 'assets/airpods.png',
                      name: 'Airpods ultra 2',
                      title: 'airpods',
                      price: 45,
                      dicount: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ProductItem(
                    Product(
                      id: 2,
                      imageUrl: 'assets/airr.png',
                      name: 'LG plus X',
                      title: 'HeadPhones',
                      price: 50,
                      dicount: 70,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ProductItem(
                    Product(
                      id: 3,
                      imageUrl: 'assets/airrr.png',
                      name: 'samsung Pro2',
                      title: 'Headphones',
                      price: 50,
                      dicount: 70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget checked() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'You Checked',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.75,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                CheckedTile(
                  Checked(
                    id: 1,
                    imageUrl: 'assets/SAMSUNg.jpg',
                    name: ' Samsung S23 ultra',
                    title: 'Samsung',
                    price: 800,
                    discount: 1250,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                CheckedTile(
                  Checked(
                    id: 2,
                    imageUrl: 'assets/apple10.jpg',
                    name: ' SApple M2 Air 15',
                    title: 'apple',
                    price: 1300,
                    discount: 1500,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                CheckedTile(
                  Checked(
                    id: 3,
                    imageUrl: 'assets/Lg.jpg',
                    name: ' Lg Family Hub',
                    title: 'Lg',
                    price: 2400,
                    discount: 2875,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                CheckedTile(
                  Checked(
                    id: 4,
                    imageUrl: 'assets/WATCH.jpg',
                    name: ' apple Watch Ultra 2',
                    title: 'apple',
                    price: 1300,
                    discount: 1700,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                header(),
                content(),
                title(),
                discounts(),
                warranty(),
                colour(),
                specs(),
                related(),
                checked(),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 12,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xffE41937),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: const Text(
                        'Add To Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 38,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.red,
                        width: 1.5,
                      ),
                    ),
                    child: const Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'QTY',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.35,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
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
}
