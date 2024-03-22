import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fa9ran/provider/location_provider.dart';
import 'package:fa9ran/provider/user_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:fa9ran/ui/pages/favourite_page.dart';
import 'package:fa9ran/ui/pages/notifi_page.dart';
import 'package:fa9ran/ui/pages/search_page.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationWidget extends ConsumerStatefulWidget {
  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends ConsumerState<LocationWidget> {
  String _currentLocation = 'Fetching location...';
  String _currentCountry = '';

 

  @override
  void didChangeDependencies()async {
    await _getLocation();
    getUserData();
    super.didChangeDependencies();
  }

  String? firstName;

  String? lastName;
  String? email;
  String? country;
  String? phoneNumber;

  void getUserData() async {
    DocumentSnapshot userData = await FirebaseFirestore.instance
        .collection('buyers')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      firstName = userData.get('firstName');
      lastName = userData.get('lastName');
      email = userData.get('email');
      country = userData.get('country');
      phoneNumber = userData.get('phoneNumber');
      ref.watch(currentUserProvider).getFormData(firstName: firstName);
      ref.watch(currentUserProvider).getFormData(lastName: lastName);
      ref.watch(currentUserProvider).getFormData(
            email: email,
          );

      ref.watch(currentUserProvider).getFormData(
            country: country,
          );

      ref.watch(currentUserProvider).getFormData(
            phoneNumber: phoneNumber,
          );
    });

    print(ref.read(currentUserProvider).currentUserData['phoneNumber']);
  }

  Future<void> updateBuyerAddressInFirestore(
      String userId, String address, String country) async {
    try {
      // Get a reference to the buyer's document in Firestore
      final buyerRef =
          FirebaseFirestore.instance.collection('buyers').doc(userId);

      // Update the 'address' field of the buyer document
      await buyerRef.update({'address': address, 'country': country});

      if (kDebugMode) {
        print('Buyer address updated successfully in Firestore.');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Failed to update buyer address: $e');
      }
      rethrow; // You can handle errors or throw them for handling elsewhere
    }
  }

  Future<void> _getLocation() async {
    PermissionStatus permission = await Permission.location.request();
    if (permission.isGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        List<Placemark> placemarks = await placemarkFromCoordinates(
            position.latitude, position.longitude);
        if (placemarks.isNotEmpty) {
          Placemark place = placemarks[0];
          String currentLocation;
          String currentCountry; // New variable to store country

          // Extract location details
          if (place.street != null && place.street!.isNotEmpty) {
            currentLocation = place.street!;
          } else if (place.locality != null && place.locality!.isNotEmpty) {
            currentLocation = place.locality!;
          } else if (place.administrativeArea != null &&
              place.administrativeArea!.isNotEmpty) {
            currentLocation = place.administrativeArea!;
          } else {
            currentLocation = 'Unknown';
          }

          // Extract country
          if (place.country != null && place.country!.isNotEmpty) {
            currentCountry = place.country!;
          } else {
            currentCountry = 'Unknown';
          }

          setState(() {
            _currentLocation = currentLocation;
            _currentCountry = currentCountry; // Update state with country
          });

          // Store location in Riverpod
          ref.read(locationProvider).getFormData(address: _currentLocation);
          // Update the buyer's address with the current location
          await updateBuyerAddressInFirestore(
              FirebaseAuth.instance.currentUser!.uid,
              _currentLocation,
              _currentCountry);
          print(_currentCountry);
          // Store country in a separate variable or perform any other action with it
          // For example, you can pass it to another function or store it in a state variable.

          // Example:
          // storeCountryInVariable(currentCountry);
        } else {
          setState(() {
            _currentLocation = 'Address not found';
          });
        }
      } catch (e) {
        setState(() {
          _currentLocation = 'Failed to get location: $e';
        });
        if (kDebugMode) {
          print('Error during reverse geocoding: $e');
        }
      }
    } else {
      setState(() {
        _currentLocation = 'Permission denied to access location';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(top: 16, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 8,
                    ),
                    height: 40,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 37.5),
                        hintText: 'Search here ...',
                        hintStyle: const TextStyle(
                          color: Color(0xffC8C8CB),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(
                            color: Color(0xffE41937),
                          ),
                        ),
                        prefixIcon: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SearchPage(),
                                ));
                          },
                          child: const Icon(
                            Icons.search,
                            size: 20,
                            color: Color(0xffC8C8CB),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      SizedBox(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FavouritePage(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/btn_wishlist.png',
                            width: 37.5,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NotifiPage(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/notification.png',
                            height: 26,
                            width: 26,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Location display
            Container(
              height: 36.5,
              width: 297.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffF5F5F5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/location-pin.png',
                    width: 15.75,
                    height: 15.75,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(right: 13.0),
                      child: Text(
                        'My Position: $_currentLocation',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          color: new Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'assets/Arrow.png',
                    width: 18,
                    height: 18,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      toolbarHeight: 115,
    );
  }
}
