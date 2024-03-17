// import 'package:fa9ran/models/categories_models.dart';
// import 'package:fa9ran/ui/pages/products_page.dart';
// import 'package:flutter/material.dart';

// class CategoriesTile extends StatelessWidget {
//   final Categories categories;
//   const CategoriesTile(this.categories, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const ProductsPage(),
//               ),
//             );
//           },
//           child: Container(
//             margin: const EdgeInsets.only(
//               top: 7,
//             ),
//             height: 63,
//             width: 63,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: const Color(0xffC8C8CB),
//                 width: 1.75,
//               ),
//             ),
//             child: Image.asset(
//               categories.imageUrl,
//               width: 65,
//               height: 65,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Text(
//           categories.title,
//           style: const TextStyle(
//             color: Color(0xff80848A),
//             fontSize: 12,
//             fontWeight: FontWeight.w400,
//           ),
//         )
//       ],
//     );
//   }
// }
