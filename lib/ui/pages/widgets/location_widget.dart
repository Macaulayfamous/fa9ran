import 'package:fa9ran/ui/pages/favourite_page.dart';
import 'package:fa9ran/ui/pages/notifi_page.dart';
import 'package:fa9ran/ui/pages/search_page.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

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
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'My Position :Tanta City, Gharbia, Egypt',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
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
