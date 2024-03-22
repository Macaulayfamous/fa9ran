import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fa9ran/ui/pages/inner_screens/product_detail._screen.dart';
import 'package:flutter/material.dart';

class ProductDisplay extends StatelessWidget {
  // final Product product;
  // const ProductDisplay(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _productStream =
        FirebaseFirestore.instance.collection('products').snapshots();

    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _productStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            );
          }

          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 200 / 290,
            ),
            itemBuilder: (context, index) {
              final productData = snapshot.data!.docs[index];
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ProductItem(productData: productData),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productData,
  });

  final QueryDocumentSnapshot<Object?> productData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(
                  product: productData,
                ),
              ),
            );
          },
          child: Container(
            height: 170,
            width: 170,
            decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        margin: const EdgeInsets.only(top: 1, left: 120),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/add to cart.png',
                            width: 20.85,
                            height: 20.85,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 102.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 127.5,
                        ),
                        child: Image.asset(
                          'assets/btn_wishlist.png',
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, left: 2),
                    child: Image.network(
                      productData['imageUrl'][0],
                      width: 140,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Text(
              productData['productPrice'].toString(),
              style: const TextStyle(
                color: Color(0xffFA254C),
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '50',
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          child:  Container(
            padding:  EdgeInsets.only(right: 13.0),
            child:   Text(
              productData['productName'],
              overflow: TextOverflow.ellipsis,
              style:  TextStyle(
                fontSize: 13.0,
                fontFamily: 'Roboto',
                color: new Color(0xFF212121),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 3.5,
        ),
        Text(
          productData['category'],
          style: const TextStyle(
            color: Color(0xff868D94),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
