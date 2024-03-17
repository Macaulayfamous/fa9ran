import 'package:fa9ran/models/picks_tile.dart';
import 'package:flutter/material.dart';

class PicksTile extends StatelessWidget {
  final Picks picks;
  const PicksTile(this.picks, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    picks.imageUrl,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            picks.name,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
