import 'package:fa9ran/ui/pages/widgets/banner_widget.dart';
import 'package:fa9ran/ui/pages/widgets/category_item.dart';
import 'package:fa9ran/ui/pages/widgets/location_widget.dart';
import 'package:fa9ran/ui/pages/widgets/productTile.dart';
import 'package:fa9ran/ui/pages/widgets/text_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.20),
        child: LocationWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BannerArea(),
            const CategoryItem(),
            const SizedBox(
              height: 10,
            ),
            // const DiscountBanner(),
            const SizedBox(
              height: 10,
            ),
            const TextTitleWidget(),
            Container(
              height: MediaQuery.of(context).size.height -
                  300, // Adjust this height according to your design
              child: ProductDisplay(),
            ),
          ],
        ),
      ),
    );
  }
}
