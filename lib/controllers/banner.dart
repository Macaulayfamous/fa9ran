import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final bannerUrls = RxList<String>();

  Stream<List<String>> getBannerUrls() {
    return _firestore.collection('banners').snapshots().map((snapshot) {
      return snapshot.docs
          .where((doc) =>
              doc.data().containsKey('image') && (doc['image'] is List))
          .map((doc) => (doc['image'] as List)
              .cast<String>()
              .first) // Cast the list to String and get the first element
          .toList();
    });
  }
}
