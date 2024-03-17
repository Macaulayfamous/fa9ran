import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final String model;

  final String title;

  const CartTile({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.model,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(right: 11.5, left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Image.network(
                imageUrl,
                height: 105,
                width: 105,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 47.5,
                ),
                Text(
                  name, // Use the provided name
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '\$$price', // Use the provided price
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 1.5,
                ),
                Text(
                  'Model: $model',
                  style: const TextStyle(
                      color: Color(0xff868D94),
                      fontSize: 11.5,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                ),
                Row(
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                        color: Color(0xffE41937),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/check.png',
                          height: 11.75,
                          width: 11.75,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 65,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: .85,
                          ),
                        ),
                        child: Center(
                            child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.minus,
                            size: 15,
                          ),
                        )),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 30,
                        width: 42.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: const Center(
                            child: Text(
                          '1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 30,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: .85,
                          ),
                        ),
                        child: Center(
                            child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.plus,
                            size: 15,
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'assets/btn_wishlist.png',
                  height: 36.5,
                  width: 36.5,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
