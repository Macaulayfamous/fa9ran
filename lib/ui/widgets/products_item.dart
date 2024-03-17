import 'package:fa9ran/models/product_model.dart';
import 'package:fa9ran/ui/pages/inner_screens/product_detail._screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  ProductDetailScreen(product: product,),
            ),
          );
        },
        child: Container(
          height: 170,
          width: 170,
          decoration: BoxDecoration(
            color: const Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 26,
                      width: 26,
                      margin: const EdgeInsets.only(top: 1, left: 120),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/add to cart.png',
                          width: 20.85,
                          height: 20.85,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 102.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 127.5,
                      ),
                      child: Image.asset(
                        'assets/btn_wishlist.png',
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 2),
                  child: Image.network(
                    product.imageUrl,
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Row(
        children: [
          Text(
            product.price.toInt().toString(),
            style: const TextStyle(
              color: Color(0xffFA254C),
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            '\$${product.dicount}',
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.lineThrough),
          ),
        ],
      ),
      const SizedBox(
        height: 4,
      ),
      Text(
        product.name,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w800,
        ),
      ),
      const SizedBox(
        height: 3.5,
      ),
      Text(
        product.title,
        style: const TextStyle(
          color: Color(0xff868D94),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(
        height: 50,
      ),
    ]);
  }
}
