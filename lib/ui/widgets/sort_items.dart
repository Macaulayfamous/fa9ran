import 'package:fa9ran/models/sorts_model.dart';
import 'package:flutter/material.dart';

class SortItems extends StatelessWidget {
  final Sorts sorts;
  const SortItems(this.sorts, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27.5,
      width: 75,
      decoration: BoxDecoration(
        color: const Color(0xffFFF0F4),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xffF5F5F5),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Arrow.png',
              width: 18,
              height: 18,
            ),
            Text(
              sorts.name,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            Image.asset(
              sorts.imageUrl,
              width: 15,
              height: 15,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
