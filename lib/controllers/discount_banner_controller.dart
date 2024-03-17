import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DiscountController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final bannerUrls = RxList<String>();

  Stream<List<String>> getBannerUrls() {
    return _firestore.collection('discountBanner').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc['image'] as String).toList();
    });
  }
}