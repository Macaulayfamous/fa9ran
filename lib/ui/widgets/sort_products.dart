import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SortProducts extends StatefulWidget {
  const SortProducts({Key? key}) : super(key: key);

  @override
  _SortProductsState createState() => _SortProductsState();
}

class _SortProductsState extends State<SortProducts> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: [
                  'assets/airfryer.jpg',
                  'assets/Rectangle 50.png',
                  'assets/ps4.jpg',
                  'assets/tvvv.jpg',
                  'assets/Gta.jpg',
                ].map((item) {
                  return Image.asset(
                    item,
                    height: 186,
                    fit: BoxFit.cover,
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 186,
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
              Positioned(
                child: Container(
                  height: 17.5,
                  width: 35,
                  margin: const EdgeInsets.only(top: 158, left: 161),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.35),
                        spreadRadius: 1.2,
                        blurRadius: 1.2,
                        offset: const Offset(0, 1.2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_star.png',
                        width: 16.75,
                        color: Colors.red,
                      ),
                      const Text(
                        '4.4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 26,
                width: 26,
                margin: const EdgeInsets.only(top: 3, left: 167),
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
                    'assets/add to cart.png',
                    width: 21.5,
                    height: 21.5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 1.5),
                child: Image.asset(
                  'assets/btn_wishlist.png',
                  width: 28,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 5; i++)
                Container(
                  width: 6.0,
                  height: 6.0,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 2.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == i ? Colors.red : Colors.grey,
                  ),
                ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 7.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'oneplus Bullets Wireless',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '\$250',
                      style: TextStyle(
                        color: Color(0xffFA254C),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '\$300',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '%25 OFF',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.5,
                ),
                Text(
                  'OnePlus',
                  style: TextStyle(
                    color: Color(0xff868D94),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 7.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
