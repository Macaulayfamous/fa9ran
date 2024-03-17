import 'package:fa9ran/models/checked_model.dart';
import 'package:flutter/material.dart';

class CheckedTile extends StatelessWidget {
  final Checked checked;
  const CheckedTile(this.checked, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: Container(
          width: 171,
          height: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                checked.imageUrl,
              ),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 2,
      ),
      Text(
        checked.name,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
      Row(
        children: [
          Text(
            '\$${checked.price}',
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
            '\$${checked.discount}',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          const SizedBox(
            height: 3.5,
          ),
        ],
      ),
      Text(
        checked.title,
        style: const TextStyle(
          color: Color(0xff868D94),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ]);
  }
}
