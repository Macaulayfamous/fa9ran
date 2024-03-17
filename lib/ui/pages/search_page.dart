import 'package:fa9ran/models/search_model.dart';
import 'package:fa9ran/ui/widgets/search_items.dart';
import 'package:fa9ran/ui/widgets/search_products.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 9),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15.75, top: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/arrow_left.png',
                        height: 24,
                        width: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, right: 5),
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.7,
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xffE41937),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 24,
                          color: Color(0xffC8C8CB),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7, right: 13, left: 7.5),
                    child: Image.asset(
                      'assets/Buy.png',
                      height: 26,
                      width: 26,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              )
            ],
          ),
          toolbarHeight: 95.0,
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(left: 20, right: 19),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: const Text(
                'Last Search',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: const Text(
                'Clear All',
                style: TextStyle(
                    color: Color(0xffD65B5B),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      );
    }

    Widget emptySearch() {
      return Container(
        margin: const EdgeInsets.only(top: 18, left: 23, right: 28.5),
        child: Column(
          children: [
            SearchItems(
              Search(
                id: 1,
                name: 'IPhone 15 pro max',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SearchItems(
              Search(
                id: 1,
                name: 'Google Pixel 6 pro ',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SearchItems(
              Search(
                id: 2,
                name: 'Intel I9 core 13900',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SearchItems(
              Search(
                id: 3,
                name: 'Keyboard Wirless   ',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SearchItems(
              Search(
                id: 4,
                name: 'Macbook 15 pro     ',
              ),
            ),
          ],
        ),
      );
    }

    Widget intro() {
      return Container(
        margin: const EdgeInsets.only(left: 25, right: 19),
        child: Row(
          children: [
            const Text(
              'Search result for "Household"',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              width: 90,
            ),
            Container(
              height: 35,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Filters',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.75,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/Filter.png',
                    height: 13,
                    width: 13,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 19.75, right: 27.75),
        child: const Column(
          children: [
            SearchProducts(
              id: 1,
              name: 'Jeans Jacket',
              imageUrl: 'assets/Jacket-Transparent.png',
              model: 'Model TRES25',
              price: 350.99,
            ),
            SizedBox(
              height: 15.75,
            ),
            SearchProducts(
              id: 2,
              name: 'Rolex Wtach',
              imageUrl: 'assets/watch.png',
              model: 'Rolex 2024',
              price: 900,
            ),
            SizedBox(
              height: 15.75,
            ),
            SearchProducts(
              id: 3,
              name: 'Bumb Coat',
              imageUrl: 'assets/jacket2.png',
              model: 'TS50',
              price: 200,
            ),
            SizedBox(
              height: 15.75,
            ),
            SearchProducts(
              id: 4,
              name: 'Nike Air Force ',
              imageUrl: 'assets/sneaker.png',
              model: 'Model 23',
              price: 350.99,
            ),
            SizedBox(
              height: 15.75,
            ),
            SearchProducts(
              id: 5,
              name: 'PlayStation 5',
              imageUrl: 'assets/ps5.png',
              model: 'Pro',
              price: 500.00,
            ),
            SizedBox(
              height: 15.75,
            ),
            SearchProducts(
              id: 6,
              name: 'Ikea Chair',
              imageUrl: 'assets/pngwing.com.png',
              model: 'Model TRES25',
              price: 150.99,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      );
    }

    Widget image() {
      return Container(
        margin: const EdgeInsets.only(top: 56),
        child: Column(
          children: [
            Image.asset(
              'assets/empty.png',
              height: 313,
              width: 313,
              fit: BoxFit.cover,
            ),
            const Text(
              'No Results Found',
              style: TextStyle(
                color: Color(0xff595959),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            //title(),
            //emptySearch(),
            intro(),
            content(),
            //image(),
          ],
        ),
      ),
    );
  }
}
