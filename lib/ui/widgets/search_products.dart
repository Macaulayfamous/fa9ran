import 'package:flutter/material.dart';

class SearchProducts extends StatelessWidget {
  final int id;
  final String name;
  final String imageUrl;
  final double price;
  final String model;

  const SearchProducts({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.model,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 42.5),
          height: 95,
          width: 95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color(0xffF5F5F5),
          ),
          child: Center(
            child: Image.asset(
              imageUrl,
              height: 96.5,
              width: 96.5,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\$$price',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 1.5,
            ),
            Text(
              'Model: $model', // Use the model provided
              style: const TextStyle(
                  color: Color(0xff868D94),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffF5F5F5)),
          child: Center(
            child: Image.asset(
              'assets/plus.png',
              height: 22,
              width: 22,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 14,
        ),
        Image.asset(
          'assets/Group 53.png',
          height: 17,
          width: 3.5,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
