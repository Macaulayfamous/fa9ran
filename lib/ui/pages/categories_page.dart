import 'package:fa9ran/ui/pages/inner_screens/product_detail._screen.dart';
import 'package:fa9ran/ui/pages/inner_screens/sub_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  late CollectionReference products; // Reference to the products collection
  List<Map<String, dynamic>> productList =
      []; // List to store products for the selected category
  String categoryName = "";
  @override
  void initState() {
    super.initState();
    products = FirebaseFirestore.instance
        .collection('categories'); // Initialize the products collection
  }

  void updateProducts(String category) {
    // Fetch products for the selected category from Firestore
    products
        .where('categoryName', isEqualTo: category)
        .get()
        .then((querySnapshot) {
      setState(() {
        productList = querySnapshot.docs.map((doc) {
          // Extract the first image URL from the list
          String image = doc['image'][0].toString();
          categoryName = doc['categoryName'].toString();
          return {'categoryName': categoryName, 'image': image};
        }).toList();
      });
      print(categoryName);
    }).catchError((error) {
      print("Failed to fetch products: $error");
    });
  }

  Widget displaySubCategories() {
    final Stream<QuerySnapshot> productStream = FirebaseFirestore.instance
        .collection('subcategories')
        .where('categoryName', isEqualTo: categoryName)
        .snapshots();

    return StreamBuilder<QuerySnapshot>(
      stream: productStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Container(
          // height: 200,
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                // childAspectRatio: 200 / 200,
              ),
              // shrinkWrap: true,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final productData = snapshot.data!.docs[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SubCategoryScreen(
                        subCategory: productData['subcategoryName'],
                      );
                    }));
                  },
                  child: Column(
                    children: [
                      CircleAvatar(
                          child: Image.network(
                        productData['image'][0],
                        fit: BoxFit.cover,
                        width: 27,
                      )),
                      Center(
                        child: Text(
                          productData['subcategoryName'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        );
      },
    );
  }

  Widget displayProduct() {
    final Stream<QuerySnapshot> productStream = FirebaseFirestore.instance
        .collection('products')
        .where('category', isEqualTo: categoryName)
        .snapshots();

    return StreamBuilder<QuerySnapshot>(
      stream: productStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final productData = snapshot.data!.docs[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProductDetailScreen(product: productData);
                    }));
                  },
                  child: ListTile(
                    title: Text(
                      productData['productName'],
                      style: GoogleFonts.roboto(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: CircleAvatar(
                      child: Image.network(
                        productData['imageUrl'][0],
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                    ),
                    subtitle: Text(
                      "\$${productData['productPrice']}",
                      style: GoogleFonts.quando(
                        color: Colors.red,
                      ),
                    ),
                  ),
                );
              }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      resizeToAvoidBottomInset: false,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side - Display categories
          Expanded(
            child: FutureBuilder<QuerySnapshot>(
              future: products
                  .get(), // Fetch all products for now, you may want to optimize this if you have a large number of products
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                // Get unique category categoryNames from the products collection
                List<String> categoryList = snapshot.data!.docs
                    .map((DocumentSnapshot document) =>
                        document['categoryName'].toString())
                    .toSet() // Convert to set to get unique values
                    .toList();

                return ListView.builder(
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    String category = categoryList[index];
                    return ListTile(
                      title: Text(
                        category,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      onTap: () {
                        updateProducts(category);
                      },
                    );
                  },
                );
              },
            ),
          ),
          // Right side - Display products for the selected category
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white, // Adjust as per your design
              child: ListView.builder(
                // shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  String productcategoryName =
                      productList[index]['categoryName'];
                  String image = productList[index]['image'];
                  return ListTile(
                    title: Text(
                      productcategoryName,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'subcategories',
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'view all',
                            style: GoogleFonts.quicksand(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      children: [
                        displaySubCategories(),
                      ],
                    ),
                    // leading: image.isNotEmpty
                    //     ? CircleAvatar(
                    //         child: Image.network(
                    //           image,
                    //           width: 50,
                    //           height: 50,
                    //           fit: BoxFit.cover,
                    //         ),
                    //       )
                    //     : const SizedBox(
                    //         width: 50,
                    //         height: 50,
                    //         child: Icon(Icons.image),
                    //       ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
