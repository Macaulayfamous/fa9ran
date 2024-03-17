import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class ProductUploadScreen extends StatefulWidget {
  const ProductUploadScreen({super.key});

  @override
  _ProductUploadScreenState createState() => _ProductUploadScreenState();
}

class _ProductUploadScreenState extends State<ProductUploadScreen> {
  late String productName;
  late String description;
  late int productPrice;
  late String capacity;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final List<String> _categoryList = [];
  final TextEditingController _sizeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  List<String> images = [];
  bool isPrime = false;
  bool hasWarranty = false;
  bool hasGuarantee = false;

  List<String> colors = [];
  List<String> sizes = [];
  bool _entered = false;

  final List<String> _sizeList = [];

  bool _isSave = false;
  final ImagePicker picker = ImagePicker();
  final FirebaseStorage _storage = FirebaseStorage.instance;

  final List<File> _image = [];

  final List<String> _imageUrlList = [];

  late String _selectCategory = "";

  _getCategories() {
    return _firestore
        .collection('categories')
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          _categoryList.add(doc['categoryName']);
        });
      }
    });
  }

  // TextButton(
  //                     onPressed: () async {
  //                       // EasyLoading.show(status: 'Saving Images');
  //                       for (var img in _image) {
  //                         Reference ref = _storage
  //                             .ref()
  //                             .child('productImages')
  //                             .child(Uuid().v4());

  //                         await ref.putFile(img).whenComplete(() async {
  //                           await ref.getDownloadURL().then((value) {
  //                             setState(() {
  //                               _imageUrlList.add(value);
  //                             });
  //                           });
  //                         });
  //                       }

  //                       setState(() {
  //                         // _productProvider.getFormData(imageUrlList: _imageUrlList);
  //                         // EasyLoading.dismiss();
  //                       });
  //                     },
  //                     child: Text(''),
  //                   ),

  @override
  void initState() {
    _getCategories();
    super.initState();
  }

  chooseImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile == null) {
      print('no image picked');
    } else {
      setState(() {
        _image.add(File(pickedFile.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                header(),

                // Product Images
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: _image.length + 1,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 8,
                            childAspectRatio: 3 / 3),
                        itemBuilder: ((context, index) {
                          return index == 0
                              ? Center(
                                  child: IconButton(
                                      onPressed: () {
                                        chooseImage();
                                      },
                                      icon: Icon(Icons.add)),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: FileImage(
                                        _image[index - 1],
                                      ),
                                    ),
                                  ),
                                );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Product Title
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter field';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    productName = value;
                  },
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 16),
                    hintText: 'product name',
                    hintStyle: const TextStyle(
                      color: Color(0xff808080),
                      fontSize: 13,
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
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Product Description
                TextFormField(
                  maxLines: 5,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter field';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    description = value;
                  },
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 16),
                    hintText: 'Description',
                    hintStyle: const TextStyle(
                      color: Color(0xff808080),
                      fontSize: 13,
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
                  ),
                ),

                ///PRODUCT SIZE
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: 100,
                              child: TextFormField(
                                controller: _sizeController,
                                onChanged: (value) {
                                  setState(() {
                                    _entered = true;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: 'Size',
                                ),
                              ),
                            ),
                          ),
                          _entered == true
                              ? ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.yellow.shade900,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _sizeList.add(_sizeController.text);
                                      _sizeController.clear();
                                    });

                                    print(_sizeList);
                                  },
                                  child: Text(
                                    'Add',
                                  ),
                                )
                              : Text(''),
                        ],
                      ),
                      if (_sizeList.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _sizeList.length,
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _sizeList.removeAt(index);

                                        // _productProvider.getFormData(sizeList: _sizeList);
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.yellow.shade800,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          _sizeList[index],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                      if (_sizeList.isNotEmpty)
                        ElevatedButton(
                          onPressed: () {
                            // _productProvider.getFormData(sizeList: _sizeList);

                            setState(() {
                              _isSave = true;
                            });
                          },
                          child: Text(
                            _isSave ? 'Saved' : 'save',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                // Product Price
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter field';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      productPrice = int.parse(value);
                    },
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 16),
                      hintText: 'price',
                      hintStyle: const TextStyle(
                        color: Color(0xff808080),
                        fontSize: 13,
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
                    ),
                  ),
                ),
                // Is Prime
                SizedBox(
                  height: 15,
                ),
                DropdownButtonFormField(
                    hint: Text('Select Category'),
                    items: _categoryList.map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem(value: e, child: Text(e));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectCategory = value!;
                      });
                    }),
                Row(
                  children: [
                    Text('Is Prime'),
                    Checkbox(
                      value: isPrime,
                      onChanged: (value) {
                        setState(() {
                          isPrime = value!;
                        });
                      },
                    ),
                  ],
                ),

                // Product Sizes

                // Product Capacity
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter field';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {},
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 16),
                    hintText: 'Product Capacity',
                    hintStyle: const TextStyle(
                      color: Color(0xff808080),
                      fontSize: 13,
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
                  ),
                ),

                // Product has Warranty
                SwitchListTile(
                  title: Text('Has Warranty'),
                  value: hasWarranty,
                  onChanged: (value) {
                    setState(() {
                      hasWarranty = value;
                    });
                  },
                ),

                // Product has Guarantee
                SwitchListTile(
                  title: Text('Has Guarantee'),
                  value: hasGuarantee,
                  onChanged: (value) {
                    setState(() {
                      hasGuarantee = value;
                    });
                  },
                ),

                const SizedBox(height: 15),

                // Submit Button
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 56,
          width: 322.5,
          child: TextButton(
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                final String productId = Uuid().v1();
                _imageUrlList
                    .clear(); // Reset the list before processing each product

                for (var img in _image) {
                  Reference ref =
                      _storage.ref().child('productImages').child(Uuid().v4());

                  await ref.putFile(img).whenComplete(() async {
                    await ref.getDownloadURL().then((value) {
                      setState(() {
                        _imageUrlList.add(value);
                      });
                    });
                  });
                }

                await _firestore.collection('products').doc(productId).set({
                  'productImages': _imageUrlList,
                  'productName':productName,
                  'price':productPrice,
                  "hasGuarantee": hasGuarantee,
                  'hasWarranty': hasWarranty,
                  'category': _selectCategory,
                  'size': _sizeList,
                });
              }
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xffE41937),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
            ),
            child: const Text(
              'Upload Product',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget header() {
    return AnimationConfiguration.staggeredList(
      position: 0,
      duration: const Duration(milliseconds: 800),
      child: SlideAnimation(
        verticalOffset: 50.0,
        child: FadeInAnimation(
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(5),
              ),
              border: Border.all(
                color: Colors.grey,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1.75,
                  blurRadius: 1.75,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ENTER PRODUCT DETAILS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7.5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
