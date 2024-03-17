import 'package:fa9ran/models/favourite_model.dart';
import 'package:flutter/material.dart';

class FavouriteTile extends StatelessWidget {
  final Favourite favourite;
  const FavouriteTile(this.favourite, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                favourite.imageUrl,
                width: 171,
                height: 170,
              ),

              Container(
                height: 15,
                width: 35,
                margin: const EdgeInsets.only(top: 149, left: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icon_star.png',
                        width: 15,
                        color: Colors.red,
                      ),
                      const Text(
                        '4.4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ), //
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            favourite.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Text(
                '\$${favourite.price}',
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
                '\$${favourite.discount}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '\$${favourite.percent}',
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            favourite.title,
            style: const TextStyle(
              color: Color(0xff868D94),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 125,
                margin: const EdgeInsets.only(top: 4),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Add To Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/btn_wishlist_active.png',
                width: 31.90,
                height: 31.90,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
