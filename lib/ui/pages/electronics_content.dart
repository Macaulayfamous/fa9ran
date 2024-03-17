import 'package:flutter/material.dart';

class ElectronicsContent extends StatefulWidget {
  const ElectronicsContent({super.key});

  @override
  State<ElectronicsContent> createState() => _ElectronicsContentState();
}

class _ElectronicsContentState extends State<ElectronicsContent> {
  bool phonesVisible = false;
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
              color: Colors.purple,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 13.5),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Electronic Store',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        "Tvs, Laptops, Gaming,\nlots more.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Image.asset(
                    'assets/airpods.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
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
                    'SmartPhones',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 170),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        phonesVisible = !phonesVisible;
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
              if (phonesVisible)
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
