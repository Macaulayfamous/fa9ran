import 'package:flutter/material.dart';
import 'package:fa9ran/models/product_model.dart';
import 'package:fa9ran/ui/pages/product_page.dart';

class ProductT extends StatelessWidget {
  final Product product;
  const ProductT(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  ProductPage(),
              ),
            );
          },
          child: Container(
            height: 213,
            width: 171,
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.network(
                        product.imageUrl, // Assuming imageUrl is a list of strings
                        height: 148,
                        width: 145,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        child: Container(
                          height: 17.5,
                          width: 35,
                          margin: const EdgeInsets.only(top: 122.5, left: 130),
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
                        margin: const EdgeInsets.only(top: 2.5, left: 137.5),
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
                          child: Image.network(
                            'https://plus.unsplash.com/premium_photo-1703343320185-d37526fdb2a0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            width: 21.5,
                            height: 21.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 1.5),
                        child: Image.network(
                          'assets/btn_wishlist.png',
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const SizedBox(width: 7.5),
                      Text(
                        '\$${product.price}'.toString(),
                        style: const TextStyle(
                          color: Color(0xffFA254C),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '\$${product.dicount}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 7.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 3.5),
                        Text(
                          product.name,
                          style: const TextStyle(
                            color: Color(0xff868D94),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
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
