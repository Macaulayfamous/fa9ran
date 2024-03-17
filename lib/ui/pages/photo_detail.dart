import 'package:flutter/material.dart';

class PhotoDetail extends StatelessWidget {
  final List<String> imageUrls;

  const PhotoDetail({Key? key, required this.imageUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 35, left: 11, right: 11),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                'CANCEL',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            Image.asset(
              'assets/coupon (2) 2.png',
              width: 92.5,
            )
          ],
        ),
      );
    }

    Widget backGround() {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 27.5),
            child: Text(
              '1 of ${imageUrls.length}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 27.5,
          ),
          Image.network(
            imageUrls.first, // Displaying the first image from the list
            width: double.infinity,
            height: 400,
          ),
        ],
      );
    }

    Widget slide() {
      return Container(
        margin: const EdgeInsets.only(
          top: 17.75,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.5, right: 12.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: imageUrls.map((imageUrl) {
                return PhotoTile(imageUrl: imageUrl);
              }).toList(),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            backGround(),
            slide(),
          ],
        ),
      ),
    );
  }
}

class PhotoTile extends StatelessWidget {
  final String imageUrl;

  const PhotoTile({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tapping on thumbnail image if needed
      },
      child: Image.network(
        imageUrl,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
