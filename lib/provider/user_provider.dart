import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentUserProvider = ChangeNotifierProvider<CurrentUserProvider>((ref) {
  return CurrentUserProvider();
});

class CurrentUserProvider extends ChangeNotifier {
  Map<String, dynamic> currentUserData = {};

  void getFormData({
    String? firstName,
    String? lastName,
    String? email,
    country,
    String? phoneNumber,
  }) {
    if (firstName != null) {
      currentUserData['firstName'] = firstName;
    }

    if (lastName != null) {
      currentUserData['lastName'] = lastName;
    }
    if (email != null) {
      currentUserData['email'] = email;
    }
    if (country != null) {
      currentUserData['country'] = country;
    }

    if (phoneNumber != null) {
      currentUserData['phoneNumber'] = phoneNumber;
    }

    notifyListeners();
  }

  void clearData() {
    currentUserData.clear();
    notifyListeners();
  }
}
