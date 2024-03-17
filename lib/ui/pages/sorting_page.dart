import 'package:fa9ran/ui/widgets/sorting_tile.dart';
import 'package:flutter/material.dart';

class SortingPage extends StatelessWidget {
  const SortingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 3, right: 5, left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/close.png',
                height: 27.5,
                width: 27.5,
                fit: BoxFit.cover,
              ),
            ),
            Image.asset(
              'assets/coupon (2) 2.png',
              height: 93,
              width: 93,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(left: 5, right: 7.5),
        child: Column(
          children: [
            const SortingTile(
              id: 1,
              name: 'Type of Item',
            ),
            const SizedBox(
              height: 15,
            ),
            const SortingTile(
              id: 2,
              name: 'Item Condition',
            ),
            const SizedBox(
              height: 15,
            ),
            const SortingTile(
              id: 3,
              name: 'New Arrivals',
            ),
            const SizedBox(
              height: 15,
            ),
            const SortingTile(
              id: 4,
              name: 'Seller',
            ),
            const SizedBox(
              height: 15,
            ),
            const SortingTile(
              id: 5,
              name: 'Connection Type',
            ),
            const SizedBox(
              height: 15,
            ),
            const SortingTile(
              id: 6,
              name: 'Colour',
            ),
            const SizedBox(
              height: 15,
            ),
            const SortingTile(
              id: 7,
              name: 'Brand',
            ),
            const SizedBox(
              height: 15,
            ),
            const SortingTile(
              id: 8,
              name: 'Price',
            ),
            const SizedBox(
              height: 15,
            ),
            const SortingTile(
              id: 9,
              name: 'Category',
            ),
            const SizedBox(
              height: 15,
            ),
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
                const Text(
                  'Product Rating',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                header(),
                content(),
              ],
            ),
          ),
          Positioned(
            top: 618.5,
            left: 50,
            child: Row(
              children: [
                Container(
                  height: 52.5,
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 7.5, left: 7.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Apply',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '130 Items',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 75,
                  margin: const EdgeInsets.only(left: 17.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.75),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.red,
                      width: 1.40,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'RESET',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
