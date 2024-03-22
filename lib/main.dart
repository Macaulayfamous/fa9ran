import 'dart:io';

import 'package:fa9ran/controllers/auth_controller.dart';
import 'package:fa9ran/controllers/banner.dart';
import 'package:fa9ran/controllers/category_controller.dart';
import 'package:fa9ran/controllers/discount_banner_controller.dart';
import 'package:fa9ran/ui/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey: "AIzaSyCtEALxMFd8wa47xmcU4x-nN21fPv_pJAY",
          appId:
              '1092559654910-1sdpkimt3b1sk9n0gla7l4lqtj0npgho.apps.googleusercontent.com',
          messagingSenderId: '1092559654910',
          projectId: 'fawran-966fe',
          storageBucket: "gs://fawran-966fe.appspot.com",
        )).then((value) {
          Get.put(AuthController());
        })
      : await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
      },
      initialBinding: BindingsBuilder(() {
        Get.put<BannerController>(
          BannerController(),
        );

        Get.put<CategoryController>(
          CategoryController(),
        );
        Get.put<DiscountController>(
          DiscountController(),
        );
      }),
    );
  }
}
