import 'package:fa9ran/controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key});

  @override
  Widget build(BuildContext context) {
    final CategoryController categoryController =
        Get.find<CategoryController>();

    return Obx(() {
      final screenWidth = MediaQuery.of(context).size.width;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04,
              vertical: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Category',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.black,
                      fontSize: screenWidth > 600 ? 16 : 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'See All',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    // color: Colors.black,
                    fontSize: screenWidth > 600 ? 16 : 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // Always 4 columns
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0, // Adjust spacing as needed
            ),
            itemCount: categoryController.categories.length > 8
                ? 8
                : categoryController.categories.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 0.18,
                      height: screenWidth * 0.18,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF336699),
                        ),
                        borderRadius: BorderRadius.circular(
                          screenWidth * 0.09,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.network(
                          categoryController.categories[index].image.toString(),
                          width: screenWidth,
                          height: screenWidth,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: 0),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Container(
                          width:
                              100, // Set an explicit width or use a value suitable for your design
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              categoryController.categories[index].categoryName
                                  .toString(),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.grey.shade600,
                                fontSize: screenWidth > 600 ? 14 : 12,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ],
      );
    });
  }
}
