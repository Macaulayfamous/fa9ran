import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final locationProvider = ChangeNotifierProvider<LocationProvider>((ref) {
  return LocationProvider();
});

class LocationProvider extends ChangeNotifier {
  Map<String, dynamic> locationData = {};

  void getFormData({
    String? address,
  }) {
    if (address != null) {
      locationData['address'] = address;
    }

    notifyListeners();
  }

  void clearData() {
    locationData.clear();
    notifyListeners();
  }
}
