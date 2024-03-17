import 'package:fa9ran/models/search_model.dart';
import 'package:flutter/material.dart';

class SearchItems extends StatelessWidget {
  final Search search;
  const SearchItems(this.search, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 2.5,
        ),
        Image.asset(
          'assets/time.png',
          height: 17.8,
          width: 17.8,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 18,
        ),
        Text(
          search.name,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis),
        ),
        const Spacer(),
        Image.asset(
          'assets/close_icon.png',
          height: 13,
          width: 13,
          fit: BoxFit.cover,
          color: const Color(0xff939393),
        )
      ],
    );
  }
}
