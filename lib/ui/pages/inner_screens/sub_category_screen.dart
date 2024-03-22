import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fa9ran/models/checked_model.dart';
import 'package:fa9ran/ui/widgets/checked_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubCategoryScreen extends StatelessWidget {
  final String subCategory;

  const SubCategoryScreen({super.key, required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          subCategory,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            checked(),
          ],
        ),
      ),
    );
  }

  Widget checked() {
    final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
        .collection('products')
        .where('subCategory', isEqualTo: subCategory)
        .snapshots();

    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        return GridView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 200 / 250),
            itemBuilder: (context, index) {
              return CheckedTile(
                Checked(
                  id: 1,
                  imageUrl: 'assets/SAMSUNg.jpg',
                  name: ' Samsung S23 ultra',
                  title: 'Samsung',
                  price: 800,
                  discount: 1250,
                ),
              );
            });
      },
    );
  }
}
