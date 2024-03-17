
import 'package:fa9ran/models/categories_models.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  RxList<CategoryModel> categories = <CategoryModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _fetchCategories();
  }

  void _fetchCategories() {
    _firestore.collection('categories').snapshots().listen((querySnapshot) {
      categories.assignAll(
        querySnapshot.docs.map((doc) {
          final data = doc.data() as Map<String, dynamic>;
          return CategoryModel(
            categoryName: data['categoryName'],
            image: data['image'][0],
          );
        }).toList(),
      );
    }, onError: (error) {
      print("Error fetching categories: $error");
    });
  }
}