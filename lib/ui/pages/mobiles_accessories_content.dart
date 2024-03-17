import 'package:flutter/material.dart';

class MobilesAccessoriesContent extends StatefulWidget {
  const MobilesAccessoriesContent({super.key});

  @override
  State<MobilesAccessoriesContent> createState() =>
      _MobileAccessoiresContentState();
}

class _MobileAccessoiresContentState extends State<MobilesAccessoriesContent> {
  bool kitchenVisible = false;
  bool furnitureVisible = false;
  bool toolsVisible = false;
  bool decorVisible = false;
  bool beddingVisible = false;
  bool brandsVisible = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 87.5,
            width: 262.5,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 6),
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
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 19.5,
                  ),
                  Image.asset(
                    'assets/s23.png',
                    height: 85,
                    width: 85,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  const SizedBox(width: 153),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        kitchenVisible = !kitchenVisible;
                      });
                    },
                    child: Image.asset(
                      'assets/back.png',
                      height: 13,
                      width: 13,
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
                      children: [
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                      ],
                    ),
                  ],
                ),
              Container(
                margin: const EdgeInsets.only(top: 22.5),
                height: 1,
                width: 262.5,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
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
                    width: 196.75,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        furnitureVisible = !furnitureVisible;
                      });
                    },
                    child: Image.asset(
                      'assets/back.png',
                      height: 13,
                      width: 13,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              if (furnitureVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                      ],
                    ),
                  ],
                ),
              Container(
                margin: const EdgeInsets.only(top: 22.5),
                height: 1,
                width: 262.5,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    'Tools & Improvement',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 126.75,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        toolsVisible = !toolsVisible;
                      });
                    },
                    child: Image.asset(
                      'assets/back.png',
                      height: 13,
                      width: 13,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              if (toolsVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                      ],
                    ),
                  ],
                ),
              Container(
                margin: const EdgeInsets.only(top: 22.5),
                height: 1,
                width: 262.5,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    'Home Decor',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 176.75,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        decorVisible = !decorVisible;
                      });
                    },
                    child: Image.asset(
                      'assets/back.png',
                      height: 13,
                      width: 13,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              if (decorVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                      ],
                    ),
                  ],
                ),
              Container(
                margin: const EdgeInsets.only(top: 22.5),
                height: 1,
                width: 262.5,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    ' Bath & Bedding',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 157.45,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        beddingVisible = !beddingVisible;
                      });
                    },
                    child: Image.asset(
                      'assets/back.png',
                      height: 13,
                      width: 13,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              if (beddingVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                      ],
                    ),
                  ],
                ),
              Container(
                margin: const EdgeInsets.only(top: 22.5),
                height: 1,
                width: 262.5,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    'Top Brands',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 183,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        beddingVisible = !beddingVisible;
                      });
                    },
                    child: Image.asset(
                      'assets/back.png',
                      height: 13,
                      width: 13,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              if (beddingVisible)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          width: 8.5,
                        ),
                        Image.asset(
                          'assets/OIP (1).jpg',
                          height: 75,
                          width: 75,
                        ),
                      ],
                    ),
                  ],
                ),
              Container(
                margin: const EdgeInsets.only(top: 22.5),
                height: 1,
                width: 262.5,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
