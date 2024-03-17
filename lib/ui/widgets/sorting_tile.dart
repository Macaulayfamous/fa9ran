import 'package:flutter/material.dart';

class SortingTile extends StatelessWidget {
  final int id;
  final String name;
  const SortingTile({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 1.5),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_left,
                ),
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, left: 20),
          height: 1,
          width: 550,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
