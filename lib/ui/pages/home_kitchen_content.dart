import 'package:flutter/material.dart';

class HomeKitchenContent extends StatefulWidget {
  const HomeKitchenContent({super.key});

  @override
  State<HomeKitchenContent> createState() => _HomeKitchenContentState();
}

class _HomeKitchenContentState extends State<HomeKitchenContent> {
  bool kitchenVisible = false;
  bool furnitureVisible = false;
  bool toolsVisible = false;
  bool decorVisible = false;
  bool beddingVisible = false;
  bool brandsVisible = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 2, left: 7.5, right: 7.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 102.5,
              width: 240,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New Arrivals',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          "All the Latest smartphones under \nthe roof!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/airr.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Kitchen & Dining',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      kitchenVisible = !kitchenVisible;
                    });
                  },
                  child: Image.asset(
                    'assets/back.png',
                    height: 13.75,
                    width: 13.75,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            if (kitchenVisible)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                    ],
                  ),
                ],
              ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 1.25,
              width: 238,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(4),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Furniture',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 152.5,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      furnitureVisible = !furnitureVisible;
                    });
                  },
                  child: Image.asset(
                    'assets/back.png',
                    height: 12.5,
                    width: 12.5,
                    fit: BoxFit.cover,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            if (furnitureVisible)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                    ],
                  ),
                ],
              ),
            Container(
              margin: const EdgeInsets.only(
                top: 22.5,
              ),
              height: 1.25,
              width: 238,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(4),
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Row(
              children: [
                const Text(
                  'Kitchen & Dining',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                Image.asset(
                  'assets/back.png',
                  height: 12.5,
                  width: 12.5,
                  fit: BoxFit.cover,
                  color: Colors.grey,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 22.5,
              ),
              height: 1.25,
              width: 238,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(4),
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Row(
              children: [
                const Text(
                  'Kitchen & Dining',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      furnitureVisible = !furnitureVisible;
                    });
                  },
                  child: Image.asset(
                    'assets/back.png',
                    height: 12.5,
                    width: 12.5,
                    fit: BoxFit.cover,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            if (furnitureVisible)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                    ],
                  ),
                ],
              ),
            Container(
              margin: const EdgeInsets.only(
                top: 22.5,
              ),
              height: 1.25,
              width: 238,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(4),
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Row(
              children: [
                const Text(
                  'Kitchen & Dining',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                Image.asset(
                  'assets/back.png',
                  height: 12.5,
                  width: 12.5,
                  fit: BoxFit.cover,
                  color: Colors.grey,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 22.5,
              ),
              height: 1.25,
              width: 238,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(4),
                ),
              ),
            ),
            const SizedBox(
              height: 12.5,
            ),
            Row(
              children: [
                const Text(
                  'Top brand',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      brandsVisible = !brandsVisible;
                    });
                  },
                  child: Image.asset(
                    'assets/back.png',
                    height: 13.75,
                    width: 13.75,
                    fit: BoxFit.cover,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            if (brandsVisible)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/OIP (1).jpg',
                        height: 60,
                        width: 60,
                      ),
                    ],
                  ),
                ],
              ),
            Container(
              margin: const EdgeInsets.only(
                top: 22.5,
              ),
              height: 1.25,
              width: 238,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
