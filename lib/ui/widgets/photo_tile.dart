import 'package:fa9ran/models/photo_model.dart';
import 'package:flutter/material.dart';

class PhotoTile extends StatelessWidget {
  final Photo photo;
  const PhotoTile(this.photo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          color: Colors.red,
        ),
      ),
      child: Image.asset(
        photo.imageUrl,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
